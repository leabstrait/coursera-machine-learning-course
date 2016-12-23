function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
    m = length(y); % number of training examples

% You need to return the following variables correctly 
    J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

%     hTheta = zeros(m,1);
%     for row = 1:m
%         hTheta(row) = theta' * X(row,:)'; % because we need each row of X as a vector
%     end
%     errorMat = hTheta - y;
%     summandMat = errorMat .^ 2;
%     J = sum(summandMat)/2/m;
    
%     Vectorized form
      J = sum((X*theta-y) .^ 2)/2/m;
% =========================================================================

end
