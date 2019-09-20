L=2^(N*M);
H = zeros(L,L);
for iM=1:M 
    for iN=1:N-1
        H=H+ cr_op(N*M,2,(iN-1)*M+iM,ad)*cr_op(N*M,2,iN*M+iM,ac)' + cr_op(N*M,2,(iN-1)*M+iM,ac)*cr_op(N*M,2,iN*M+iM,ad)';
    end
end
