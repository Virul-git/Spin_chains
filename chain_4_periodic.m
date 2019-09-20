% run specific files
spin_operators

N=4; % number of lattice points
M=3; % number of flavours

%%% state format for the system
% | 0,0,0; 0,0,0; 0,0,0; 0,0,0; >    %% state
%     1      2      3      4         %% lattice points
%   1 2 3; 1 2 3; 1 2 3; 1 2 3;      %% flavours
%%%

%% basis vectors
s1 = ones(N,M);
chain = ([1,1,1, 1,1,1, 1,1,1, 1,1,1]');

%% make the state
state1 =1;
for iS=1:N*M
    if chain(iS)==0
        state1 = kron(state1,d);
    else
        state1 = kron(state1,u);
    end
end



% make_parity_operators;
% plot(diag(real(PP)),'r*-')



