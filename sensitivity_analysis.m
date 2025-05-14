% sensitivity_analysis.m
% Varying weights or parameters to test sensitivity

load_data; % load expert_data and weights
aggregated = ldfwhm_operator(expert_data, weights);
scores = compute_scores(aggregated);

bar(scores(:,1))
title('Score Sensitivity per Alternative')
xlabel('Alternatives')
ylabel('Score')
