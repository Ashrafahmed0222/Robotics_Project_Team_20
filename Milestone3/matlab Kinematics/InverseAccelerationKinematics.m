% Define link lengths
l0 = 0.097;   % Length of link 0
l1 = 0.119;   % Length of link 1
l2 = 0.119;   % Length of link 2
pi = 22/7;

% Define symbolic joint variables for q, q_dot, and q_ddot
syms q1 q2 q3 q1_dot q2_dot q3_dot real
q = [q1; q2; q3];
q_dot = [q1_dot; q2_dot; q3_dot];

% Define DH parameters based on joint angles and link lengths
DH_table = [q(1), l0, -0.014, pi/2;
            q(2), 0, l1, 0;
            q(3), 0, l2, 0];

% Initialize transformation matrix and Jacobian matrices
T = eye(4);
Jv = sym(zeros(3, 3)); % Pre-allocate 3x3 matrix for linear velocity Jacobian
Z0 = [0;0;1];
O0 = [0;0;0];
Ot = sym(zeros(3, 3));
zt = sym(zeros(3, 3));

% Compute transformations and Jacobian entries
for i = 1:3
    % Extract DH parameters
    theta = DH_table(i, 1);
    d = DH_table(i, 2);
    a = DH_table(i, 3);
    alpha = DH_table(i, 4);

    % Transformation matrix for current joint
    Ti = [cos(theta), -sin(theta)*cos(alpha), sin(theta)*sin(alpha), a*cos(theta);
          sin(theta), cos(theta)*cos(alpha), -cos(theta)*sin(alpha), a*sin(theta);
          0, sin(alpha), cos(alpha), d;
          0, 0, 0, 1];

    T = T * Ti;  % Update cumulative transformation

    % Get current joint's origin and Z-axis in the base frame
    Oi = T(1:3, 4);
    Ot(1:3, i) = Oi;
    Zi = T(1:3, 3);
    zt(1:3, i) = Zi;
end

% Compute Jacobian columns for linear velocity (Jv)
Jv(:,1) = cross(Z0, Ot(1:3,3) - O0);
for i = 2:3
    Jv(:, i) = cross(zt(:,i-1), Ot(1:3,3) - Ot(1:3,i-1));
end

% Compute the time derivative of Jv, Jv_dot
dJv_dq1 = diff(Jv, q1);
dJv_dq2 = diff(Jv, q2);
dJv_dq3 = diff(Jv, q3);

% Compute Jv_dot using the chain rule
Jv_dot = dJv_dq1 * q1_dot + dJv_dq2 * q2_dot + dJv_dq3 * q3_dot;

% Define desired end-effector acceleration (linear part only)
syms X_ddot1 X_ddot2 X_ddot3 real
X_ddot = [X_ddot1; X_ddot2; X_ddot3];

% Compute inverse acceleration kinematics for linear motion
q_ddot = pinv(Jv) * (X_ddot - Jv_dot * q_dot);

% Substitute numerical values
q_vals = {q1, q2, q3, q1_dot, q2_dot, q3_dot};
num_vals = {0.5, 0.3, 0.2, 0.1, 0.2, 0.3}; % example values
X_ddot_vals = {X_ddot1, X_ddot2, X_ddot3};
X_ddot_num_vals = {0.2, 0.1, -0.05}; % example end-effector accelerations

q_ddot_numeric = double(subs(q_ddot, [q_vals, X_ddot_vals], [num_vals, X_ddot_num_vals]));

% Display the numerical result
disp('Inverse acceleration (q_ddot) with specified values:');
disp(q_ddot_numeric);
