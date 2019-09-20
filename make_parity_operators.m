L=2^(N*M);
PP=zeros(L,L,'gpuArray');
Pp=zeros(L,L,'gpuArray');
Pm=zeros(L,L,'gpuArray');

for iN=1:2:N*M
    Pp=Pp+cr_op(N*M,2,iN,n);
end

for iN=2:2:N*M
    Pm=Pm+cr_op(N*M,2,iN,n);
end

for iN=1:N*M
    PP=PP+ exp(-1i*pi*cr_op(N*M,2,iN,n));
end