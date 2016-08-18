function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

% finding the sigmoid. exp(X) already finds the individual e^x for each
% element. Use element-wise division to ensure there are no dimensional 
% mismatch.
g = 1 ./ (1 + exp(-z));

% =============================================================

end
