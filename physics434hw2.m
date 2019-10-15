%problem 1
% rolling sevens is more probable. The ration of rolling snake eyes and
% rolling sevens is 1/6.
%problem 2
D1 = zeros(201,1);
for i=1:6
 D1(i+100) = 1/6;
end
D2 = 0*D1;
for x=0:99
D2(x+100) = 0;
for k=0:99
 D2(x+100) = D2(x+100) + D1(k+100)*D1(x-k+100);
 end
end
bar(D2(101:124))
%problem 3
%the mean should be 7[(2*1/36+3*1/18+....+12*1/36)=7]
%the variance=[(2-7)^2*1/36+(3-7)^2*1/18+.....(12-7)^2*1/36=5.83]
%problem 4
D3 = 0*D1;
D4 = 0*D1;
D5 = 0*D1;
D6 = 0*D1;
D7 = 0*D1;
D8 = 0*D1;
D9 = 0*D1;
D10 = 0*D1;
for x = 0:99;
    D3(x+100)=0;
    for k = 0:99;
        D3(x+100)= D3(x+100)+D2(k+100)*D1(x-k+100);
    end
end
for x = 0:99;
    D4(x+100)=0;
    for k = 0:99;
        D4(x+100)= D4(x+100)+D3(k+100)*D1(x-k+100);
    end
end
for x = 0:99;
    D5(x+100)=0;
    for k = 0:99;
        D5(x+100)= D5(x+100)+D4(k+100)*D1(x-k+100);
    end
end
for x = 0:99;
    D6(x+100)=0;
    for k = 0:99;
        D6(x+100)= D6(x+100)+D5(k+100)*D1(x-k+100);
    end
end
for x = 0:99;
    D7(x+100)=0;
    for k = 0:99;
        D7(x+100)= D7(x+100)+D6(k+100)*D1(x-k+100);
    end
end
for x = 0:99;
    D8(x+100)=0;
    for k = 0:99;
        D8(x+100)= D8(x+100)+D7(k+100)*D1(x-k+100);
    end
end
for x = 0:99;
    D9(x+100)=0;
    for k = 0:99;
        D9(x+100)= D9(x+100)+D8(k+100)*D1(x-k+100);
    end
end
for x = 0:99;
    D10(x+100)=0;
    for k = 0:99;
        D10(x+100)= D10(x+100)+D9(k+100)*D1(x-k+100);
    end
end
bar(D10(101:180))
% this is a guassian distribution.
%problem 5 
%when there is n dice, the mean should be (n+6*n)/2.
%the change of mean is propertional to the change of number of dice.



