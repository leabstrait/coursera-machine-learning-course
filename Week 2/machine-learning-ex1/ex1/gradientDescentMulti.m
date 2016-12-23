function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
    m = length(y); % number of training examples
    J_history = zeros(num_iters, 1);
    hTheta = zeros(m,1);
    parameterCount = size(theta, 1);
    temp = zeros(size(theta, 1),1);
    
    for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
        
        for ctr = 1:m
            hTheta(ctr) = theta' * X(ctr,:)'; % because we need each row of X as a vector
        end
        
        % calculate new theta values
        for j = 1:parameterCount
            diffMat = hTheta - y;
            summandMat = diffMat .* X(:,j); % x-j =  parameter for jth feature
            temp(j) = theta(j) - alpha * sum(summandMat)/m;
        end
        
        % aimultaneous update of the theta vector elements
        for j = 1:parameterCount
            theta(j) = temp(j);
        end
        
    %
    % ============================================================

    % Save the cost J in every iteration    
        J_history(iter) = computeCostMulti(X, y, theta);

    end
end
