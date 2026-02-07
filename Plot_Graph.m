clear; clc; close all;

folderPath = 'C:\Users\Akkarasaknarong\Documents\GitHub\LAB_Control_Data\Data_Difference_PWM_frequency\Ramp';

files = {'P3_Ramp_2000Hz_rec1.mat', ...
         'P3_Ramp_2000Hz_rec2.mat', ...
         'P3_Ramp_2000Hz_rec3.mat'};
lineColors = {'r', 'g', 'b'};
legendNames = {'200 Hz', '2000 Hz', '20000 Hz'};
figure('Name', 'Comparison of 3 Records', 'Color', 'w');
hold on;
windowSize = 1;
time = 5 ;

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

    idx = t <= time;
    
    t = simData{1}.Values.Time;
    y = simData{1}.Values.Data;

    t = t(idx);
    y = y(idx);

    % y_main = smoothdata(y, 'movmean', smoothingWindow);
    % plot(t, y, 'Color', lineColors{i}, 'LineWidth', 1.5);
    
    y_smooth = smoothdata(y, 'movmean', windowSize);
    plot(t, y_smooth, 'Color', lineColors{i}, 'LineWidth', 1);

end

title('Comparison of PWM Frequencies');
xlabel('Time (s)');
ylabel('Angular_velocity (rad/s)');
legend(legendNames);
grid on;
hold off;