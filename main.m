%THIS PROGRAM ALLOWS TO SOLVE THE FERMAT-TORRICELLI PROBLEM
%++++++++++++++++++++++++++++++=
clc
clear all
%A=10*rand(100,2);
A=10*rand(2,100);
x=[-5;5];
N=1000;
%alpha=0.1;
v=[];
v(1)=fun_val(A,x);
for i=2:N
    x=x-1/i*weaksub(A,x);
    v(i)=min(v(i-1),fun_val(A,x));
end
figure 
fprintf('A suboptimal solution is:');
x
plot(1:N,v,'*');

figure

for i=1:size(A,2)
    plot([x(1) A(1,i)],[x(2) A(2,i)]);
   axis([0 10 0 10])
    hold on
end