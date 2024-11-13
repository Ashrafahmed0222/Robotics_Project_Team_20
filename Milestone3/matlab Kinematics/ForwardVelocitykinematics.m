% Define joint angles (q) and joint velocities (q_dot) for testing
q = [pi/4; pi/6; pi/3];          % Example joint angles in radians
q_dot = [0.5; 0.2; 0.3];         % Example joint velocities in rad/s

% Define link lengths
l0 = 0.097;                       % Length of link 0
l1 = 0.119;                       % Length of link 1
l2 = 0.119;                       % Length of link 2
pi = 22/7;

% Define DH parameters based on joint angles and link lengths
DH_table = [q(1), l0, -0.014, pi/2;
            q(2), 0, l1, 0;
            q(3), 0, l2, 0];

% Initialize transformation matrix and fixed-size Jacobian matrices
T = eye(4);
Jv = zeros(3, 3);                  % Linear velocity Jacobian (3x3)
Jw = zeros(3, 3);                  % Angular velocity Jacobian (3x3)
Z0 = [0;0;1];
O0 = [0;0;0];
Ot = zeros(3, 3);
zt = zeros(3, 3);

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

    T = T * Ti;                   % Update cumulative transformation

    % Get current joint's origin and Z-axis in the base frame
    Oi = T(1:3, 4);
    Ot(1:3, i) = Oi;
    Zi = T(1:3, 3);
    zt(1:3, i) = Zi;
end

% Compute Jacobian columns
Jv(:, 1) = cross(Z0, Ot(1:3, 3) - O0);  % Linear velocity for joint 1
Jw(:, 1) = Z0;                          % Angular velocity for joint 1
for i = 2:3
    Jv(:, i) = cross(zt(:, i-1), Ot(1:3, 3) - Ot(1:3, i-1));
    Jw(:, i) = zt(:, i-1);
end

% Combine linear and angular velocity Jacobian parts
J = [Jv; Jw];

% Compute forward velocity kinematics
V_F = J * q_dot;

% Display results
disp('Jacobian (J):');
disp(J);
disp('Forward Velocity (V_F):');
disp(V_F);
