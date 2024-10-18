% Simscape(TM) Multibody(TM) version: 24.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(21).translation = [0.0 0.0 0.0];
smiData.RigidTransform(21).angle = 0.0;
smiData.RigidTransform(21).axis = [0.0 0.0 0.0];
smiData.RigidTransform(21).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0 28.000000000000025 -13.999999999999998];  % mm
smiData.RigidTransform(1).angle = 0;  % rad
smiData.RigidTransform(1).axis = [0 0 0];
smiData.RigidTransform(1).ID = "B[Arm 03.step-1:-:GRIPPER ASSEMBLED-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [45.722900427979233 31.021826066225444 25.455966640259859];  % mm
smiData.RigidTransform(2).angle = 2.0943951023931966;  % rad
smiData.RigidTransform(2).axis = [0.57735026918962573 0.57735026918962618 0.5773502691896254];
smiData.RigidTransform(2).ID = "F[Arm 03.step-1:-:GRIPPER ASSEMBLED-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [26.615223689149786 5.3000000000000131 5.4999999999999911];  % mm
smiData.RigidTransform(3).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(3).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(3).ID = "B[Arm 02.step-1:-:Arm 03.step-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-5.000000000079325 -29.584776310849044 6.6933125708601438e-12];  % mm
smiData.RigidTransform(4).angle = 2.094395102393197;  % rad
smiData.RigidTransform(4).axis = [-0.57735026918962629 -0.57735026918962506 -0.57735026918962606];
smiData.RigidTransform(4).ID = "F[Arm 02.step-1:-:Arm 03.step-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 119.99999999999999 21.000000000000004];  % mm
smiData.RigidTransform(5).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(5).axis = [1 0 7.2858385991025898e-17];
smiData.RigidTransform(5).ID = "B[Arm 01.step-1:-:Arm 02.step-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-34.750000000026709 -3.7102765304553031e-11 -1.2000000000003439];  % mm
smiData.RigidTransform(6).angle = 3.1415926535897927;  % rad
smiData.RigidTransform(6).axis = [1 2.7095904942758744e-31 1.4087083394158894e-15];
smiData.RigidTransform(6).ID = "F[Arm 01.step-1:-:Arm 02.step-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [0 0 4.0000000000000036];  % mm
smiData.RigidTransform(7).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(7).axis = [1 0 0];
smiData.RigidTransform(7).ID = "B[Base.step-1:-:Waist.step-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [-2.4016344468691386e-12 -53.500000000001002 -1.0196288258157438e-12];  % mm
smiData.RigidTransform(8).angle = 2.0943951023931962;  % rad
smiData.RigidTransform(8).axis = [0.57735026918962606 -0.57735026918962618 0.57735026918962518];
smiData.RigidTransform(8).ID = "F[Base.step-1:-:Waist.step-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [17.999999999999989 40.279999999999987 -13.910000000000013];  % mm
smiData.RigidTransform(9).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(9).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(9).ID = "B[Waist.step-1:-:Arm 01.step-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [-1.9326762412674725e-12 5.6612492471685982e-12 36.20000000000357];  % mm
smiData.RigidTransform(10).angle = 3.1415926535897891;  % rad
smiData.RigidTransform(10).axis = [1 2.1461738637210638e-30 1.0229593986168441e-15];
smiData.RigidTransform(10).ID = "F[Waist.step-1:-:Arm 01.step-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [36.222900427974523 47.271826066175528 63.455966640256101];  % mm
smiData.RigidTransform(11).angle = 2.5332768702818838;  % rad
smiData.RigidTransform(11).axis = [-0.31389789882550712 -0.67136730226938124 -0.67136730226938002];
smiData.RigidTransform(11).ID = "AssemblyGround[GRIPPER ASSEMBLED-1:Part 2 gear 2.step-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [54.222900428020942 45.271826066175635 83.455966640226137];  % mm
smiData.RigidTransform(12).angle = 0.75398466190744717;  % rad
smiData.RigidTransform(12).axis = [-7.8128799688249325e-17 -1 -2.2873881542640334e-16];
smiData.RigidTransform(12).ID = "AssemblyGround[GRIPPER ASSEMBLED-1:Gripper link.step-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [24.644540853349799 36.271826066175628 107.49110417609148];  % mm
smiData.RigidTransform(13).angle = 0.88723272346955229;  % rad
smiData.RigidTransform(13).axis = [0 1 1.5187355434745842e-16];
smiData.RigidTransform(13).ID = "AssemblyGround[GRIPPER ASSEMBLED-1:Gripper link.step-4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(14).translation = [61.222900427977329 40.021826066175606 65.955966640254488];  % mm
smiData.RigidTransform(14).angle = 0;  % rad
smiData.RigidTransform(14).axis = [0 0 0];
smiData.RigidTransform(14).ID = "AssemblyGround[GRIPPER ASSEMBLED-1:Gripper_Base.step-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(15).translation = [24.644540853352353 45.271826066175635 107.49110417609093];  % mm
smiData.RigidTransform(15).angle = 0.88723272346957593;  % rad
smiData.RigidTransform(15).axis = [0 1 1.5187355434745376e-16];
smiData.RigidTransform(15).ID = "AssemblyGround[GRIPPER ASSEMBLED-1:Gripper link.step-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(16).translation = [16.50528162664769 45.021826066175606 87.052110579533434];  % mm
smiData.RigidTransform(16).angle = 3.1415926535897922;  % rad
smiData.RigidTransform(16).axis = [0.82763709694802678 6.3718257511850748e-16 0.56126360629871841];
smiData.RigidTransform(16).ID = "AssemblyGround[GRIPPER ASSEMBLED-1:Gripper.step-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(17).translation = [63.122900428013025 47.271826066175635 63.455966640218961];  % mm
smiData.RigidTransform(17).angle = 1.7064255463499145;  % rad
smiData.RigidTransform(17).axis = [0.87280164025941886 -0.34512120824463138 0.34512120824463077];
smiData.RigidTransform(17).ID = "AssemblyGround[GRIPPER ASSEMBLED-1:Part 1 gear 2.step-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(18).translation = [85.557253030652163 40.521826066175635 84.486000479951088];  % mm
smiData.RigidTransform(18).angle = 1.9791599371377395;  % rad
smiData.RigidTransform(18).axis = [9.774756359205234e-17 -1 -4.843293399447438e-17];
smiData.RigidTransform(18).ID = "AssemblyGround[GRIPPER ASSEMBLED-1:Gripper.step-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(19).translation = [76.82087641621483 36.271826066175599 104.67698172520734];  % mm
smiData.RigidTransform(19).angle = 2.3876079916823389;  % rad
smiData.RigidTransform(19).axis = [3.3575055250530444e-17 1 0];
smiData.RigidTransform(19).ID = "AssemblyGround[GRIPPER ASSEMBLED-1:Gripper link.step-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(20).translation = [68.222900427977322 16.27182606617561 63.455966640254438];  % mm
smiData.RigidTransform(20).angle = 1.5707963267948954;  % rad
smiData.RigidTransform(20).axis = [-1 0 0];
smiData.RigidTransform(20).ID = "AssemblyGround[GRIPPER ASSEMBLED-1:Servo motor micro 9g.step-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(21).translation = [115.35031269674879 -20.210077957233224 98.201136233767329];  % mm
smiData.RigidTransform(21).angle = 2.5646559212271542;  % rad
smiData.RigidTransform(21).axis = [-0.60071112436273877 0.63667398931943631 0.48352081277947956];
smiData.RigidTransform(21).ID = "RootGround[Base.step-1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(11).mass = 0.0;
smiData.Solid(11).CoM = [0.0 0.0 0.0];
smiData.Solid(11).MoI = [0.0 0.0 0.0];
smiData.Solid(11).PoI = [0.0 0.0 0.0];
smiData.Solid(11).color = [0.0 0.0 0.0];
smiData.Solid(11).opacity = 0.0;
smiData.Solid(11).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.073648170370864199;  % kg
smiData.Solid(1).CoM = [7.4945894541905203 19.383339454262128 -1.4292884892754283];  % mm
smiData.Solid(1).MoI = [67.953672140801572 60.133448032106266 50.282483128982847];  % kg*mm^2
smiData.Solid(1).PoI = [6.730657120660072 0.25438792023150852 -6.4300493503523253];  % kg*mm^2
smiData.Solid(1).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "Waist.step*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.06406206295744972;  % kg
smiData.Solid(2).CoM = [0.00012850336070086672 59.999995910407222 13.228587043168883];  % mm
smiData.Solid(2).MoI = [103.75486208622179 9.228640010943634 108.62500499605751];  % kg*mm^2
smiData.Solid(2).PoI = [-4.5872647382648273e-06 0.00010835664496579738 0.00035388609630252518];  % kg*mm^2
smiData.Solid(2).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "Arm 01.step*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.094594871753327731;  % kg
smiData.Solid(3).CoM = [-8.547042720581558e-06 1.0969923629518372 22.106105445279805];  % mm
smiData.Solid(3).MoI = [134.83017270186269 128.85961364117938 205.64025452244309];  % kg*mm^2
smiData.Solid(3).PoI = [3.7593134126738681 -2.5243610462509074e-05 6.169501086265592e-05];  % kg*mm^2
smiData.Solid(3).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "Base.step*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.0026581803507116785;  % kg
smiData.Solid(4).CoM = [5.3917110914827076 0.56500245144856676 0];  % mm
smiData.Solid(4).MoI = [0.09023478987807175 0.37202878646128246 0.4551750954041231];  % kg*mm^2
smiData.Solid(4).PoI = [0 0 0.0080976945057579814];  % kg*mm^2
smiData.Solid(4).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "Part 2 gear 2.step*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.00079876241318469041;  % kg
smiData.Solid(5).CoM = [15.499999999999998 2 0];  % mm
smiData.Solid(5).MoI = [0.0036325042236300909 0.10442422565960351 0.10292175453779925];  % kg*mm^2
smiData.Solid(5).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(5).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = "Gripper link.step*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.016040641878349766;  % kg
smiData.Solid(6).CoM = [-11.842414288125191 -2.5596720755143565 -15.572120296144533];  % mm
smiData.Solid(6).MoI = [7.2576835835001363 9.0081674489802133 3.3009851516615751];  % kg*mm^2
smiData.Solid(6).PoI = [-1.3407724228025402 -1.785944482859851 -0.40493127016338287];  % kg*mm^2
smiData.Solid(6).color = [0.34862745098039216 0.34862745098039216 0.34862745098039216];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = "Gripper_Base.step*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 0.0025546457279845918;  % kg
smiData.Solid(7).CoM = [25.526144700867349 2.2499977309997288 -3.3670517382186889];  % mm
smiData.Solid(7).MoI = [0.060941322956612587 0.81046094036408745 0.75814168127128623];  % kg*mm^2
smiData.Solid(7).PoI = [8.4417642633935039e-09 0.15526783993080637 -2.3354106113962872e-07];  % kg*mm^2
smiData.Solid(7).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = "Gripper.step*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(8).mass = 0.0025818082333029096;  % kg
smiData.Solid(8).CoM = [5.5512025623058836 0.58171571194625649 0];  % mm
smiData.Solid(8).MoI = [0.090015147896009381 0.3686882863624838 0.45181861230301879];  % kg*mm^2
smiData.Solid(8).PoI = [0 0 0.0083372313030912523];  % kg*mm^2
smiData.Solid(8).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(8).opacity = 1;
smiData.Solid(8).ID = "Part 1 gear 2.step*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(9).mass = 0.0071774121234647612;  % kg
smiData.Solid(9).CoM = [-0.42158840740102022 0 12.59766355343019];  % mm
smiData.Solid(9).MoI = [0.46617952362535853 0.71738975405291117 0.43050804137473242];  % kg*mm^2
smiData.Solid(9).PoI = [0 0.035685885277788786 0];  % kg*mm^2
smiData.Solid(9).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(9).opacity = 1;
smiData.Solid(9).ID = "Servo motor micro 9g.step*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(10).mass = 0.047098178588760371;  % kg
smiData.Solid(10).CoM = [6.9606759410952259 -0.031659233000731736 5.7199627539258584];  % mm
smiData.Solid(10).MoI = [8.7226811414997538 51.401247559842787 54.664812040540973];  % kg*mm^2
smiData.Solid(10).PoI = [-0.00018366007019024149 0.40364656567478724 0.069701592326244718];  % kg*mm^2
smiData.Solid(10).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(10).opacity = 1;
smiData.Solid(10).ID = "Arm 02.step*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(11).mass = 0.016470381150826493;  % kg
smiData.Solid(11).CoM = [0.045921163043078542 17.807989368532063 -5.2709429457633634];  % mm
smiData.Solid(11).MoI = [3.8998418373649573 2.608968914682761 5.007804793354766];  % kg*mm^2
smiData.Solid(11).PoI = [0.57715361400521048 -0.0039834538752910797 0.01157658948467327];  % kg*mm^2
smiData.Solid(11).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(11).opacity = 1;
smiData.Solid(11).ID = "Arm 03.step*:*Default";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(5).Rz.Pos = 0.0;
smiData.RevoluteJoint(5).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = 6.3806921390830418;  % deg
smiData.RevoluteJoint(1).ID = "[Arm 03.step-1:-:GRIPPER ASSEMBLED-1]";

smiData.RevoluteJoint(2).Rz.Pos = 77.784482754212178;  % deg
smiData.RevoluteJoint(2).ID = "[Arm 02.step-1:-:Arm 03.step-1]";

smiData.RevoluteJoint(3).Rz.Pos = -92.869845166544721;  % deg
smiData.RevoluteJoint(3).ID = "[Arm 01.step-1:-:Arm 02.step-1]";

smiData.RevoluteJoint(4).Rz.Pos = 22.334786809383971;  % deg
smiData.RevoluteJoint(4).ID = "[Base.step-1:-:Waist.step-1]";

smiData.RevoluteJoint(5).Rz.Pos = -178.70585336278722;  % deg
smiData.RevoluteJoint(5).ID = "[Waist.step-1:-:Arm 01.step-1]";

