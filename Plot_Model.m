clear; clc; close all;

folderPath = 'C:\Users\Akkarasaknarong\Documents\GitHub\LAB_Control_Data\Data_Difference_PWM_frequency\Stair';

% files = {'P3_Sine_200Hz_rec2.mat', ...
         % 'P3_Sine_2000Hz_rec2.mat', ...
         % 'P3_Sine_20000Hz_rec2.mat' ... 
         % 'Sin_model.mat'};

files = {'P3_Stair_20000Hz_rec1.mat', ...
         'P3_Stair_20000Hz_rec2.mat', ...
         'P3_Stair_20000Hz_rec3.mat'};

lineColors = {'r', 'g', 'b' , 'k'};
legendNames = {'record_1', 'record_2', 'record_3' , 'Model'};
figure('Name', 'Comparison of 3 Records', 'Color', 'w');
hold on;
windowSize = 0.1;
time = 21 ;
% Ramp 750
% Stair 550

for i = 1:length(files)
    fullPath = fullfile(folderPath, files{i});
    if ~isfile(fullPath)
        continue;
    end
    loaded = load(fullPath);

    if isfield(loaded, 'data')
        simData = loaded.data;
    elseif isfield(loaded, 'motor_data')

        simData = loaded.motor_data;

    else
        vars = fieldnames(loaded);
        simData = loaded.(vars{1});
    end
    t = simData{1}.Values.Time;
    y = simData{1}.Values.Data;

    idx = t <= time;
    t = t(idx);
    y = y(idx);
    
    if i == 5 
        plot(t, y, 'Color', lineColors{i}, 'LineWidth', 1.5);
    else 
        y_smooth = smoothdata(y, 'movmean', windowSize);
        plot(t, y_smooth, 'Color', lineColors{i}, 'LineWidth',1.5);
    end
       
    
   



end

title('Deadband Stair 20000 Hz');
xlabel('Time (s)');
ylabel('Angular_velocity (rad/s)');
legend(legendNames);
grid on;
hold off;