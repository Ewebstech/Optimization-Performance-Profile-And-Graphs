function perf(T,logplot)
%PERF    Performace profiles
%
% PERF(T,logplot)-- produces a performace profile as described in
%   Benchmarking optimization software with performance profiles,
%   E.D. Dolan and J.J. More', 

if (nargin < 2)
    logplot = 0; 
end

color  = ['m' 'b' 'r' 'g' 'c' 'k' 'y' [0 0.5 1]];
line   = [':' '-' '-.' '--' '-,' ':-' '.:' ';'];
marker = ['p' 'x' '*' 's' 'd' 'v' '^' 'o' '.' 'h'];

[np,ns] = size(T);

% Minimal performance per solver

minperf = min(T,[],2);

% Compute ratios and divide by smallest element in each row.

r = zeros(np,ns);
for p = 1: np
  r(p,:) = T(p,:)/minperf(p);
end

if (logplot)
    r = log2(r);
end

max_ratio = max(max(r));

% Replace all NaN's with twice the max_ratio and sort.

r(isnan(r)) = 2*max_ratio;
r = sort(r);

% Plot stair graphs with markers.

clf;
for s = 1: ns
 [xs,ys] = stairs(r(:,s),[1:np]/np);
  option = ['-' color(s) marker(s)];
  plot(xs,ys,option,'MarkerSize',4, 'LineWidth', 1);
%  option = [line(s)];
%  plot(xs,ys,option);

hold on;
 %__________my tweaks
  xlabel('{\tau}');
  ylabel('P({log_{10}(r_{p,s})} \leq \tau : 1\leq s\leq n_{s})')

end

% Axis properties are set so that failures are not shown,
% but with the max_ratio data points shown. This highlights
% the "flatline" effect.

axis([ 0 1.1*max_ratio 0 1 ]);

% Legends and title should be added.



