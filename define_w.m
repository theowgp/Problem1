function w = define_w(N)

w = ones(N,N)/N + eye(N, N)*(N-2)/N;

% for i = 1:N
%     for j=1:N
%         w(i, j) = 1/N;
%     end
% end

end

