function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C_i = [0.01;0.03;0.1;0.3;1;3;10;30];

sigma_i = [0.01;0.03;0.1;0.3;1;3;10;30];


% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example,

               

%  Note: You can compute the prediction error using 
for i = 1:8,
  for j = 1:8,
    model= svmTrain(X, y, C_i(i), @(x1, x2) gaussianKernel(x1, x2, sigma_i(j)));
    predictions = svmPredict(model, Xval);
    error_val(i,j) = mean(double(predictions ~= yval));
  end;
end;

val = min(min(error_val));
for i = 1: 8;
  for j = 1: 8,
    if val - error_val(i,j) == 0 ,
      C = C_i(i);
      sigma = sigma_i(j);
    end;
  end;
end;
    






% =========================================================================

end
