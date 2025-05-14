# LDFWHM-Based MCDM Framework

This repository provides a MATLAB-based implementation of the **Linear Diophantine Fuzzy Weighted Hamy Mean (LDFWHM)** operator for solving Multi-Criteria Decision Making (MCDM) problems. The methodology is based on the paper:

> _"Revolutionizing Teaching Effectiveness: Integrating Physical Education Pedagogies with Smart Decision Making"_.

---

## 📁 Files Included

- **`load_data.m`**: Initializes expert judgments and weights for alternatives and criteria.
- **`ldfwhm_operator.m`**: Implements the LDFWHM aggregation logic to combine expert scores.
- **`compute_scores.m`**: Computes score and accuracy functions for each alternative.
- **`sensitivity_analysis.m`**: Visualizes how changes affect final scores.
- **`compare_methods.m`**: (Optional) Adds a baseline comparison method using simple averaging.

---

## 🧪 How to Run

1. Open MATLAB and set the directory to the folder containing these files.
2. Run `load_data.m` to load the expert judgment dataset and weights.
3. Call the aggregation operator:
    ```matlab
    aggregated = ldfwhm_operator(expert_data, weights);
    ```
4. Compute scores:
    ```matlab
    scores = compute_scores(aggregated);
    disp(scores);
    ```
5. Plot results with:
    ```matlab
    sensitivity_analysis;
    ```

---

## 📝 Example Output

Each alternative is evaluated with a score and accuracy. A higher score indicates a better ranking based on the aggregated fuzzy values and weights.

---

## 🔧 Requirements

- MATLAB R2018b or later
- No special toolboxes required

---

## 📬 Contact

For implementation issues or contributions, feel free to reach out.

