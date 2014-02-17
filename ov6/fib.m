function v = fib(n)
    v = ones(n,1);
    for i = 3:n
        v(i) = v(i-1) + v(i-2);
    end
end