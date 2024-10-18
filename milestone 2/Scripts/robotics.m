clear;
clc;
%syms x1 x2 x3 x4 
x1 = deg2rad(0);
x2 = deg2rad(0);
x3 = deg2rad(0);

l0 = 41.115; 
l1 = 120;
l2 = 120;
l3 = 42.16;

DH_table = [
    x1, l0, 0, pi/2;
    x2, 0, l1, 0;
    x3, 0, l2, 0
   
];
X = forward_kinematics_func(DH_table);
disp('End-effector position (X, Y, Z):');
disp(X);
%X_numeric = subs(X, [x1, x2, x3, x4], [pi/4, pi/3, pi/6, pi/2]);
function T = transformation_func(theta, d, a, alpha)
    T = [cos(theta), -sin(theta)*cos(alpha), sin(theta)*sin(alpha), a*cos(theta);
         sin(theta), cos(theta)*cos(alpha),  -cos(theta)*sin(alpha), a*sin(theta);
         0,          sin(alpha),            cos(alpha),            d;
         0,          0,                     0,                     1];
end

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
    X = T_total(1:3, 4);
end
