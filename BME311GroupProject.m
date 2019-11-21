
% BME311 Group Project
% Find force using velocity

%% Instep

m = 0.426; % kilograms
t_ins = [1.71 1.21 1.75 1.29 1.64]; % seconds
x_in_ins = [872 742 1064 900 747]; % inches
x_ins = x_in_ins*0.0254; % inches to meters
v_ins = x_ins./t_ins;
avg_v_ins = sum(v_ins)/5; % average velocity
avg_t_ins = sum(t_ins)./5;
F_ins = (m*avg_v_ins)./avg_t_ins; % force on the ball, (mass*average_velocity)/average_time
%% Side Foot

m = 0.426; % kilograms
t_sf = [1.04 1.16 0.72 0.99 0.95]; % seconds
x_in_sf = [600 600 399 575 488]; % inches
x_sf = x_in_sf*0.0254; % inches to meters
v_sf = x_sf./t_sf;
avg_v_sf = sum(v_sf)/5; % average velocity
avg_t_sf = sum(t_sf)./5;
F_sf = (m*avg_v_sf)./avg_t_sf; % force on the ball, (mass*average_velocity)/average_time