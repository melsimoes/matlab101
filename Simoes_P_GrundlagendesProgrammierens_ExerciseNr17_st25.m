clc; clear; close all;
%17
[x,y]=meshgrid(-2:0.1:2, -2:0.1:2);
z=x.*exp(-((x-y.^2).^2-y.^2));

% Subplot 1: Mesh Plot
subplot(3,1,1);
mesh(x,y,z,'FaceColor','#FF3399'); xlabel('X'); ylabel('Y'); zlabel('Z');
title('Mesh Plot');
grid on;

% Subplot 2: Surface Plot
subplot(3,1,2);
surf(x, y, z, 'FaceColor', '#FF3399'); 
xlabel('X'); ylabel('Y'); zlabel('Z');
title('Surface Plot');
shading interp;
grid on;

% Subplot 3: Contour Plot
subplot(3,1,3);
contour(x, y, z, 20, 'LineColor', '#FF3399'); 
xlabel('X'); ylabel('Y');
title('Contour Plot');
grid on;