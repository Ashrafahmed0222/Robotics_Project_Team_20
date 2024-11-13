clear;
clc;
syms x1 x2 x3  Can 
% Define link lengths
l0 = 100; 
l1 = 120;
l2 = 120;
l3 = 42.16;

% DH Table for forward kinematics
DH_table = [
    x1, l0, 0, pi/2;
    x2, 0, l1, 0;
    x3, 0, l2, 0
];

% Compute end-effector position
X = forward_kinematics_func(DH_table);
disp('End-effector position (X, Y, Z):');
disp(X);

% Test with specific joint angles
q = [pi/2, pi/3, pi/6];
J_inv = inverse_jacobian_matrix(q);
disp('Inverse Jacobian Matrix:');
disp(J_inv);

% Desired end-effector position
X_desired = [150; 50; 100];
q_initial = [0.1; 0.1; 0.1];
q_solution = inverse_kinematics_func(q_initial, X_desired);
disp('Solution for joint angles (q1, q2, q3):');
disp(q_solution);

% Transformation matrix function
function T = transformation_func(theta, d, a, alpha)
    T = [cos(theta), -sin(theta)*cos(alpha), sin(theta)*sin(alpha), a*cos(theta);
         sin(theta), cos(theta)*cos(alpha),  -cos(theta)*sin(alpha), a*sin(theta);
         0,          sin(alpha),            cos(alpha),            d;
         0,          0,                     0,                     1];
end

% Forward kinematics function
function X = forward_kinematics_func(DH_table)
    T_total = eye(4);
    for i = 1:size(DH_table, 1)
        theta = DH_table(i, 1);  
        d = DH_table(i, 2);      
        a = DH_table(i, 3);      
        alpha = DH_table(i, 4);  
        T = transformation_func(theta, d, a, alpha);
        T_total = T_total * T;
    end
    X = T_total(1:3, 4); % Extract end-effector position
end

% Inverse Jacobian function
function J_inv = inverse_jacobian_matrix(q)
    syms x1 x2 x3
    l0 = 41.115; 
    l1 = 120;
    l2 = 120;
    l3 = 42.16;
    
    % Define DH table
    DH_table = [
        x1, l0, -15, pi/2;
        x2, 0, l1, 0;
        x3, 0, l2, 0
    ];
    
    % Compute forward kinematics
    X = forward_kinematics_func(DH_table);
    
    % Compute Jacobian matrix by partial derivatives
    J = jacobian(X, [x1, x2, x3]);
    
    % Unpack joint angles for substitution
    q1 = q(1);
    q2 = q(2);
    q3 = q(3);
    
    % Substitute joint angles into the Jacobian
    J_numeric = subs(J, [x1, x2, x3], [q1, q2, q3]);
    
    % Convert symbolic result to double for further computation
    J_numeric = double(J_numeric);
    
    % Compute inverse or pseudo-inverse based on Jacobian size
    if rank(J_numeric) == size(J_numeric, 1)
        J_inv = inv(J_numeric); % Exact inverse
    else
        J_inv = pinv(J_numeric); % Pseudo-inverse
    end
end

% Inverse kinematics function using Newton-Raphson
function q = inverse_kinematics_func(q0, X_desired)
    tolerance = 1e-6;
    max_iterations = 100;
    q = q0; % Initial guess for joint angles

    for i = 1:max_iterations
        % Compute forward kinematics with current q
        DH_table = [
            q(1), 41.115, 0, pi/2;
            q(2), 0, 120, 0;
            q(3), 0, 120, 0
        ];
        X_current = forward_kinematics_func(DH_table);

        % Calculate error
        error = X_desired - X_current;
        
        % Break if error is within tolerance
        if norm(double(error)) < tolerance
            break;
        end

        % Compute inverse Jacobian
        J_inv = inverse_jacobian_matrix(q);

        % Update joint angles
        q = q + J_inv * error;
    end
end
