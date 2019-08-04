function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.1;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%



% >> C=[0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30]
% C =

    % 0.010000
    % 0.030000
    % 0.100000
    % 0.300000
    % 1.000000
    % 3.000000
   % 10.000000
   % 30.000000

% >> sigma=[0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30]
% sigma =

    % 0.010000
    % 0.030000
    % 0.100000
    % 0.300000
    % 1.000000
    % 3.000000
   % 10.000000
   % 30.000000

% >> for i:1 to size(C)
% parse error:

  % invalid left hand side of assignment

% >>> for i:1 to size(C)
             % ^

% >> err = zeros(size(C),size(sigma))
% err =

   % 0   0   0   0   0   0   0   0
   % 0   0   0   0   0   0   0   0
   % 0   0   0   0   0   0   0   0
   % 0   0   0   0   0   0   0   0
   % 0   0   0   0   0   0   0   0
   % 0   0   0   0   0   0   0   0
   % 0   0   0   0   0   0   0   0
   % 0   0   0   0   0   0   0   0

% >> for i=1:size(C)
% > for j=1:size(sigma)
% > model = svmTrain(X, y, C(i), @(x1, x2) gaussianKernel(x1, x2, sigma(j)));
% > predictions = svmPredict(model, Xval);
% > err(i,j) = mean(double(predictions ~= yval));
% > end;
% > end;

% >> min(err(:))
% ans =  0.030000
% >> for i=1:size(C)
% > for j=1:size(sigma)
% > if err(i,j)==min(err(:)),
% > fprintf(['\n(x,y) = (%f,%f)'],i,j);
% > end
% > end
% > end

% (x,y) = (5.000000,3.000000)>> err(5,3)
% ans =  0.030000

% >> C(5)
% ans =  1
% >> sigma(3)
% ans =  0.10000
% >>

% =========================================================================

end
