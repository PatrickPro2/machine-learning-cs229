% control statement: for while if
v = zeros(10,1);
for i = 1:10
    v(i) = 2^i;
end
v;

i = 1;
while i <= 5
    v(i) = 100;
    i = i + 1;
end

i = 1;
while true
    v(i) = 999;
    i = i + 1;
    if i == 6
        break;
    end
end

if v(1)==1
    disp('one');
elseif v(1)==2
    disp('two')
else
    disp('three')
end

