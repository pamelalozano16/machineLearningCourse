function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

for i = 1:size(X,2)
    vec = X(:,i);
    mu(1,i) = sum(vec) / length(vec);
    sigma(1,i)=std(vec);
    vec = (vec-mu(1,i))/sigma(1,i);
    X_norm(:,i)=vec;
end
fmt = ['Mu: [', repmat('%g, ', 1, numel(mu)-1), '%g]\n'];
fprintf(fmt, mu)
fmt2 = ['Sigma: [', repmat('%g, ', 1, numel(sigma)-1), '%g]\n'];
fprintf(fmt2,sigma)

% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       









% ============================================================

end
