%{  
This script for prepare data and parameters for parameter estimator.
1. Load your collected data to MATLAB workspace.
2. Run this script.
3. Follow parameter estimator instruction.
%}

% R and L from experiment

% FIX Variable
% motor_R = 3.69;
% motor_L = 0.04016;

% data_1 = load('RAMP_Spate.mat');
%data_2 = load('Stair_0.25Hz_Rec2.mat');
%data_3 = load('Stair_0.25Hz_Rec3.mat');

motor_R = 3.57;
motor_L = 0.003320925926;
% Optimization's parameters
motor_Eff = 0.99444;
motor_Ke = 2.98E-02;
motor_J = 6.69E-06;
motor_B = 1.80E-04;

% Extract collected data
%Input_1 = squeeze(double(data_1.data{2}.Values.Data));
% Time_1 = squeeze(data_1.data{1}.Values.Time);
% Velo_1 = squeeze(double(data_1.data{1}.Values.Data));

%Input_2 = squeeze(double(data_2.data{2}.Values.Data));
%Time_2 = squeeze(data_2.data{1}.Values.Time);
%Velo_2 = squeeze(double(data_2.data{1}.Values.Data));

%Input_3 = squeeze(double(data_3.data{2}.Values.Data));
%Time_3 = squeeze(data_3.data{1}.Values.Time);
%Velo_3 = squeeze(double(data_3.data{1}.Values.Data));


% Plot 
% figure(Name='Motor velocity response')
% plot(Time,Velo,Time,Input)

