function matlab_polarplot(theta,rho, save)
% Polar plots in Matlab are super simple with the inbuilt polarplot
% function.

% Create new figure
polar_fig = figure;

% Plot as polar
polarplot(theta, rho); 

% Save image and close if needed
if save
    saveas(polar_fig, './plots/matlab_polarplot.jpg');
    close(polar_fig);
end

end

