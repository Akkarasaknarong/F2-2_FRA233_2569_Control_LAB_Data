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

motor_R = 3.69;
motor_L = 0.04016;
% Optimization's parameters
motor_Eff = 0.5;
motor_Ke = 0.05;
motor_J = 0.001;
motor_B = 0.00011;

% Extract collected data
Input = squeeze(double(data{2}.Values.Data));
Time = squeeze(data{1}.Values.Time);
Velo = squeeze(double(data{1}.Values.Data));

% For Validation
validation_input = [Time, Input];
validation_Velo = [Time, Velo];

% Plot 
% figure(Name='Motor velocity response')
% plot(Time,Velo,Time,Input)

