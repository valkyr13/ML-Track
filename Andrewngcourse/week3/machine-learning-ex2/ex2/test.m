

data = load('ex2data1.txt');

X = data(:, [1, 2]); y = data(:, 3);
[m, n] = size(X);
fprintf('%f\n,%f\n',m,n);

X = [ones(m, 1) X];
[m, n] = size(X);
fprintf('%f\n,%f\n',m,n);