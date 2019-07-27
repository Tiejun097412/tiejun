function K = tensor3()

K = zeros(3, 3);
for i = 1:3
    for j = 1:3
            a = accumarray([i;j], 1, [3, 1]);
            b = factorial(a);
            c = prod(b)/factorial(sum(a)+2);
            K(i, j) = 2*c;
    end
end


