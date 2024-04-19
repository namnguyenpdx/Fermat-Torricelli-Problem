function z=weaksub(A,x)
n=size(A,2);
B=repmat(x,1,n);
C=B-A;
N=vecnorm(C);
IndZ=(N==0);
N(IndZ>0)=1;
K=C./N;
z=sum(K,2);
end






