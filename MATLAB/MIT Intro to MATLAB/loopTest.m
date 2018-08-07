% This displays the divisibility of each number upto the value N
function loopTest(N);
for n = 1:N
    answ = mod(n,2);
    answ2 = mod(n,3);
    if(answ == 0 && answ2 == 0)
        disp([num2str(n) ' is divisible by 2 and 3']);
    else if(answ == 0)
            disp([num2str(n) ' is divible by 2']);
        else if(answ2 == 0)
                disp([num2str(n) ' is divisible by 3']);
            else 
                disp([num2str(n) ' is not divisible by 2 or 3']);
            end
        end
    end
end
        