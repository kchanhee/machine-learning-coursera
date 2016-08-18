function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% Adding the bias to the training set. 
X = [ones(m,1) X];

% Calculating the hidden layer a2.
a2 = sigmoid(X*Theta1'); % This is the sigmoid of z2
a2 = [ones(size(a2,1),1) a2]; % Adding the bias to the learned parameters.

% Calculating the output layer.
a3 = sigmoid(a2*Theta2'); % This is the sigmoid of z3

[v p] = max(a3, [], 2);








% =========================================================================


end
