% Set up test parameters
q = [0.5; 0.3; -0.2];  % Example joint angles
Vx = 0.1; Vy = 0.0; Vz = 0.0;   % Linear velocity in m/s
Wx = 0.0; Wy = 0.0; Wz = 0.1;   % Angular velocity in rad/s
V_F = [Vx; Vy; Vz; Wx; Wy; Wz];

% Define link lengths
l0 = 0.097; l1 = 0.119; l2 = 0.119; pi=22/7;

% Define DH parameters based on joint angles and link lengths
DH_table = [q(1), l0, -0.014, pi/2;
            q(2), 0, l1, 0;
            q(3), 0, l2, 0];

% Initialize transformation matrix and fixed-size Jacobian matrices
T = eye(4);
Jv = zeros(3, 3);
Jw = zeros(3, 3);
Z0 = [0; 0; 1];
O0 = [0; 0; 0];
Ot = zeros(3, 3);
zt = zeros(3, 3);

% Compute transformations and Jacobian entries
for i = 1:3
    theta = DH_table(i, 1);
    d = DH_table(i, 2);
    a = DH_table(i, 3);
    alpha = DH_table(i, 4);

    Ti = [cos(theta), -sin(theta)*cos(alpha), sin(theta)*sin(alpha), a*cos(theta);
          sin(theta), cos(theta)*cos(alpha), -cos(theta)*sin(alpha), a*sin(theta);
          0, sin(alpha), cos(alpha), d;
          0, 0, 0, 1];

    T = T * Ti;

    Oi = T(1:3, 4);
    Ot(:, i) = Oi;
    Zi = T(1:3, 3);
    zt(:, i) = Zi;
end

% Compute Jacobian columns
Jv(:,1) = cross(Z0, Ot(:,3) - O0);
Jw(:,1) = Z0;
for i = 2:3
    Jv(:,i) = cross(zt(:,i-1), Ot(:,3) - Ot(:,i-1));
    Jw(:,i) = zt(:,i-1);
end
J = [Jv; Jw];

% Display results
disp('Jacobian (J):');
disp(J);

% Compute Moore-Penrose pseudo-inverse of the Jacobian
J_inv = pinv(J);

% Calculate joint velocities
q_dot = J_inv * V_F;

% Display results
disp('Desired end-effector velocity V_F:');
disp(V_F);

disp('Joint velocities q_dot:');
disp(q_dot);

