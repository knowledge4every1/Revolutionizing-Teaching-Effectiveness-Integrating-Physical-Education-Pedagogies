% compare_methods.m
% Placeholder for comparison with other methods (optional extension)

% Implement simple average method for comparison
function avg_agg = simple_average_operator(expert_data)
[n_alt, n_crit, ~] = size(expert_data);
avg_agg = zeros(n_alt, 4);
for i = 1:n_alt
    avg_agg(i,:) = mean(squeeze(expert_data(i,:,:)), 1);
end
end
