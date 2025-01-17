function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
tmp_theta = [0;theta(2:end)];
tmp = sigmoid(X * theta);

tmp1_J = - log(tmp) .* y;
tmp2_J = log(1 - tmp) .* (1 - y);
J = 1 / m * sum(tmp1_J - tmp2_J) + lambda / (2 * m) * sum(tmp_theta .^ 2);


grad = 1 / m * ((tmp - y)' * X) + lambda / m * tmp_theta';






% =============================================================

end
