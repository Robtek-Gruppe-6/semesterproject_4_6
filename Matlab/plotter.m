% Load data from a .txt file
filename = 'Distance.txt';  % Replace with your actual filename
raw_data = load(filename);  % Assumes 1 column of 12-bit ADC values

% Convert ADC values (0 to 4095) to voltage (0 to 3.3 V)
voltage = (double(raw_data) / 4095) * 3.3;

% Sampling rate: 1 sample per second
% Define speed in meters per second (adjust as needed)
speed_mps = 0.5;  % Example: 0.5 m/s

% Create distance vector
t = 0:length(voltage)-1;  % Time in seconds
distance = speed_mps * t;  % Distance = speed * time

% Plot voltage vs. distance
figure;
plot(distance, voltage, '-o');
xlabel('Distance (meters)');
ylabel('Voltage (V)');
title('12-bit ADC Voltage vs Distance');
grid on;

%%
% Load data from a .txt file
filename = 'Distance.txt';
raw_data = load(filename);  % Assumes 1 column of 12-bit ADC values

% Convert ADC values (0 to 4095) to voltage (0 to 3.3 V)
voltage = (double(raw_data) / 4095) * 3.3;

% Time and distance
t = 0:length(voltage)-1;        % Time in seconds
speed_mps = 0.05;                % Adjust to your actual speed
distance = speed_mps * t + 0.25;       % Distance in meters

% Create base figure
figure;

% First axis: time (bottom x-axis)
ax1 = axes;
plot(ax1, t, voltage, '-o', 'DisplayName', 'Voltage');
xlabel(ax1, 'Time (seconds)');
ylabel(ax1, 'Voltage (V)');
grid on;

% Second axis: distance (top x-axis)
% Second axis: distance (top x-axis)
ax2 = axes;
set(ax2, 'Position', get(ax1, 'Position'), ...
         'XAxisLocation', 'top', ...
         'YAxisLocation', 'right', ...
         'Color', 'none', ...
         'YTick', [], ...
         'XLim', get(ax1, 'XLim'));

% Compute shifted ticks
shifted_ticks = speed_mps * get(ax1, 'XTick') - 0.25;
set(ax2, 'XTick', get(ax1, 'XTick'), ...
         'XTickLabel', sprintfc('%.2f', shifted_ticks));
xlabel(ax2, 'Distance (meters)');

%%
% Load data from a .txt file
filename = 'tendegree.txt';
raw_data = load(filename);  % Assumes 1 column of 12-bit ADC values

% Convert ADC values (0 to 4095) to voltage (0 to 3.3 V)
voltage = (double(raw_data) / 4095) * 3.3;

% Time and distance
t = 0:length(voltage)-1;        % Time in seconds
speed_mps = 0.05;                % Adjust to your actual speed
distance = speed_mps * t + 0.25;       % Distance in meters

% Create base figure
figure;

% First axis: time (bottom x-axis)
ax1 = axes;
plot(ax1, t, voltage, '-o', 'DisplayName', 'Voltage');
xlabel(ax1, 'Time (seconds)');
ylabel(ax1, 'Voltage (V)');
grid on;

% Second axis: distance (top x-axis)
% Second axis: distance (top x-axis)
ax2 = axes;
set(ax2, 'Position', get(ax1, 'Position'), ...
         'XAxisLocation', 'top', ...
         'YAxisLocation', 'right', ...
         'Color', 'none', ...
         'YTick', [], ...
         'XLim', get(ax1, 'XLim'));

% Compute shifted ticks
shifted_ticks = speed_mps * get(ax1, 'XTick') - 0.25;
set(ax2, 'XTick', get(ax1, 'XTick'), ...
         'XTickLabel', sprintfc('%.2f', shifted_ticks));
xlabel(ax2, 'Distance (meters)');

%%
% Load data from a .txt file
filename = 'twtydegree.txt';
raw_data = load(filename);  % Assumes 1 column of 12-bit ADC values

% Convert ADC values (0 to 4095) to voltage (0 to 3.3 V)
voltage = (double(raw_data) / 4095) * 3.3;

% Time and distance
t = 0:length(voltage)-1;        % Time in seconds
speed_mps = 0.05;                % Adjust to your actual speed
distance = speed_mps * t + 0.25;       % Distance in meters

% Create base figure
figure;

% First axis: time (bottom x-axis)
ax1 = axes;
plot(ax1, t, voltage, '-o', 'DisplayName', 'Voltage');
xlabel(ax1, 'Time (seconds)');
ylabel(ax1, 'Voltage (V)');
grid on;

% Second axis: distance (top x-axis)
% Second axis: distance (top x-axis)
ax2 = axes;
set(ax2, 'Position', get(ax1, 'Position'), ...
         'XAxisLocation', 'top', ...
         'YAxisLocation', 'right', ...
         'Color', 'none', ...
         'YTick', [], ...
         'XLim', get(ax1, 'XLim'));

% Compute shifted ticks
shifted_ticks = speed_mps * get(ax1, 'XTick') - 0.25;
set(ax2, 'XTick', get(ax1, 'XTick'), ...
         'XTickLabel', sprintfc('%.2f', shifted_ticks));
xlabel(ax2, 'Distance (meters)');