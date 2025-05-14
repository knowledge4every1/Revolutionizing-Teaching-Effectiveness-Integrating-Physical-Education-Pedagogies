% load_data.m
% Initialize alternatives, criteria, weights, and expert judgments (LDFS)
% Format: Each alternative-criterion entry = [f, g, alpha, beta]

% Example data for 3 alternatives and 6 criteria
% Each entry is a 4-element vector: [f, g, alpha, beta]

% Expert judgments as a 3D matrix: alternatives x criteria x 4 (LDFS)
expert_data = cat(3, ...
    [0.34, 0.11, 0.32, 0.18; 0.43, 0.25, 0.15, 0.34; 0.54, 0.21, 0.45, 0.28; 0.17, 0.27, 0.14, 0.43; 0.56, 0.44, 0.32, 0.27; 0.51, 0.12, 0.17, 0.32], ...
    [0.55, 0.12, 0.24, 0.17; 0.37, 0.29, 0.18, 0.32; 0.26, 0.18, 0.22, 0.28; 0.56, 0.23, 0.76, 0.48; 0.18, 0.65, 0.34, 0.43; 0.32, 0.13, 0.38, 0.13], ...
    [0.11, 0.37, 0.54, 0.19; 0.23, 0.55, 0.27, 0.32; 0.32, 0.43, 0.67, 0.23; 0.35, 0.65, 0.63, 0.43; 0.17, 0.28, 0.45, 0.48; 0.15, 0.34, 0.29, 0.32]);

% Normalize weights for 6 criteria
weights = [0.15, 0.20, 0.10, 0.15, 0.20, 0.20];
