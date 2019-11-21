%% Instep:
m= .426;
t_instep= [1.71, 1.21, 1.75, 1.29, 1.64];
d_in_instep= [874,742, 1064, 900, 747];
d_m_instep= d_in_instep ./39.3701;
v_horizontal_instep= d_m_instep ./t_instep;
%horizontal velocity= distance/time
avg_v_horizontal_instep= sum(v_horizontal_instep)/numel(v_horizontal_instep); %avg velocity
avg_t_instep= sum(t_instep)/numel(t_instep); %avg time
%change in vertical distance= vertical velocity* time+ 1/2(acceleration)(time)^2
%change in vertical distance=0, acceleration= -9.81m/s^2
%using average time to calculate the average vertival velicity
avg_v_vertical_instep= (0.5*-9.81*(avg_t_instep)^2)/avg_t_instep;
speed_instep= sqrt((avg_v_horizontal_instep)^2+(avg_v_vertical_instep)^2);
%collision time is estimated as 0.1 seconds
%impulse equation: change in momentum(mass*velocity)=Force*collision time
collision_time= 0.1
F_instep= (m*speed_instep)/collision_time
%% Sidestep:
t_side= [1.04 1.16 0.72 0.99 0.95];
d_in_side= [600 600 399 575 488];
d_m_side= d_in_side ./39.3701;
v_horizontal_side= d_m_side ./t_side;
avg_v_horizontal_side= sum(v_horizontal_side)/numel(v_horizontal_side); %avg velocity
avg_t_side= sum(t_side)/numel(t_side); %avg time
avg_v_vertical_side= (0.5*-9.81*(avg_t_side)^2)/avg_t_side;
speed_side= sqrt((avg_v_horizontal_side)^2+(avg_v_vertical_side)^2);
F_side= (m*speed_side)/collision_time
