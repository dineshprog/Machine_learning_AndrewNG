 clear;
close;
data=load('ex2data1.txt');
X=data(:,1:2)
y=data(:,3:3)
pos=find(y==1)
neg=find(y==0)
plot(X(pos,1),X(pos,2),'r+');
hold on;
plot(X(neg,1),X(neg,2),'bo')
hold on;
xlabel('exam 1 score')
ylabel('exam 2 score')
legend('pass','fail')

[m,n]=size(X)

X=[ones(m,1),X]

theta = zeros(n+1,1)
