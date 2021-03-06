clear variables

%% PARAMETERS:
%number of agents
N=10;
%dimension
d=2;
%final time
T=0.5;
%mesh length
n=100;
%mesh size
h=T/(n-1);
%mesh
t=0:h:T;
%adjacency matrix 
w = define_w(N);


%% INITIAL CONDITION 
x0 = zeros(N, d);
% N points evenly spaced on a circle of radius r
r = 5;
[x1, x2] = Init(N, r);
x0(:, 1) = x1;
x0(:, 2) = x2;
% N points in a row
% x0(1,1) = 0;
% for i = 2:N
%     %x0(i,2)=0;
%     x0(i,1) = x0(i-1,1) + 2;
% end
plot(x1, x2, '*');
hold all




%% SOLVE  EQUATION
%sol =    EulerMethod(x0, w, N, d, n, h);
sol = BackEulerMethod(x0, w, N, d, n, h);
%[t, sol] = MATLABsolver(x0, w, T, N, d);





%% PLOT TRAJECTORIES
%figure
nn = length(sol(1,1,:));
%nn=n;
for i=1:N
    plot(reshape(sol(i,1,:), nn, 1), reshape(sol(i,2,:), nn, 1));
    hold all
end

%% PLOT shift 1 against ime
figure
nn = length(sol(1,1,:));
%nn=n;
for i=1:N
    plot(t, reshape(sol(i,1,:), nn, 1));
    hold all
end

%% PLOT shift 2 against ime
figure
nn = length(sol(1,1,:));
%nn=n;
for i=1:N
    plot(t, reshape(sol(i,2,:), nn, 1));
    hold all
end

