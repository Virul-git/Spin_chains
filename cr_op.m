% M = nunmber of flavours
% N = number of lattice points
% %%%% incase of p=1, bosonic case M=2, N=N*(flavours) %% as each flavours acts
% %%%% as a two state system
function op = cr_op(N,M,NNN,O)
if(1==NNN)
    op=kron(O,eye(M^(N-1)));
elseif(N==NNN)
    op=kron(eye(M^(N-1)),O);
else
    op=kron(kron(eye(M^(NNN-1)),O),eye(M^(N-NNN)));
end
% N,M,NNN,O
% op = gpuArray(op);
end