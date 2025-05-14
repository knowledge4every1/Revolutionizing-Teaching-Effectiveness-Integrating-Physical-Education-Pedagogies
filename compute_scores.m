% compute_scores.m
% Calculate score and accuracy functions for each alternative

function scores = compute_scores(aggregated)
n_alt = size(aggregated,1);
scores = zeros(n_alt, 2); % [score, accuracy]

for i = 1:n_alt
    f = aggregated(i,1); g = aggregated(i,2);
    alpha = aggregated(i,3); beta = aggregated(i,4);
    score = 0.5 * ((f - g) + (alpha - beta));
    accuracy = 0.5 * ((f + g)/2 + (alpha + beta));
    scores(i,:) = [score, accuracy];
end
end
