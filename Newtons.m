function root = Newtons(f, fPrime, x0, tolerance, max)

i = 0;
x = x0;

while abs(f(x)) > tolerance && i < max
        x = x - (f(x) / fPrime(x));
        i = i + 1;
    end
    
    if abs(f(x)) <= tolerance
        root = x;
    else
        root = NaN;  
    end
    fprintf('The root is approximately: %.10f\n', root);
end

