% ldfwhm_operator.m
% Apply LDFWHM aggregation to expert LDFS data

function aggregated = ldfwhm_operator(expert_data, weights)
[n_alt, n_crit, ~] = size(expert_data);
aggregated = zeros(n_alt, 4); % [f, g, alpha, beta]

for i = 1:n_alt
    f = 0; g = 0; alpha = 0; beta = 0;
    for j = 1:n_crit
        f_j = expert_data(i,j,1); g_j = expert_data(i,j,2);
        a_j = expert_data(i,j,3); b_j = expert_data(i,j,4);
        w = weights(j);
        f = f + w * f_j; g = g + w * g_j;
        alpha = alpha + w * a_j; beta = beta + w * b_j;
    end
    aggregated(i,:) = [f, g, alpha, beta];
end
end
