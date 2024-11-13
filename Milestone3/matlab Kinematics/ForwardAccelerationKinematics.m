% Define link lengths
l0 = 0.097;   % Length of link 0
l1 = 0.119;   % Length of link 1
l2 = 0.119;   % Length of link 2
pi = 22/7;

% Define symbolic joint variables for q, q_dot, and q_ddot
syms q1 q2 q3 q1_dot q2_dot q3_dot q1_ddot q2_ddot q3_ddot real
q = [q1; q2; q3];
q_dot = [q1_dot; q2_dot; q3_dot];
q_ddot = [q1_ddot; q2_ddot; q3_ddot];

% Define DH parameters based on joint angles and link lengths
DH_table = [q(1), l0, -0.014, pi/2;
            q(2), 0, l1, 0;
            q(3), 0, l2, 0];

% Initialize transformation matrix and Jacobian matrices
T = eye(4);
Jv = sym(zeros(3, 3)); % Pre-allocate 3x3 matrix for linear velocity Jacobian
Jw = sym(zeros(3, 3)); % Pre-allocate 3x3 matrix for angular velocity Jacobian
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

% Compute Jacobian columns
Jv(:,1) = cross(Z0, Ot(1:3,3) - O0);  % Linear velocity component for revolute joint
Jw(:, 1) = Z0;        % Assign to pre-allocated Jw
for i = 2:3
    Jv(:, i) = cross(zt(:,i-1), Ot(1:3,3) - Ot(1:3,i-1));     % Assign to pre-allocated Jv
    Jw(:, i) = zt(:,i-1);        % Assign to pre-allocated Jw
end

% Combine linear and angular velocity Jacobian parts
J = [Jv; Jw];

% Compute the time derivative of the Jacobian, J_dot
dJ_dq1 = diff(J, q1);
dJ_dq2 = diff(J, q2);
dJ_dq3 = diff(J, q3);

% Compute J_dot using the chain rule
J_dot = dJ_dq1 * q1_dot + dJ_dq2 * q2_dot + dJ_dq3 * q3_dot;

% Compute forward acceleration kinematics
X_ddot = J * q_ddot + J_dot * q_dot;

% Substitute numerical values
q_vals = {q1, q2, q3, q1_dot, q2_dot, q3_dot, q1_ddot, q2_ddot, q3_ddot};
num_vals = {0.5, 0.3, 0.2, 0.1, 0.2, 0.3, 0.05, 0.06, 0.07}; % example values

X_ddot_numeric = double(subs(X_ddot, q_vals, num_vals));

% Display the numerical result
disp('Forward acceleration (X_ddot) with specified values:');
disp(X_ddot_numeric);
