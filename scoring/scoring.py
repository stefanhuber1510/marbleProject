# input: obs is a Dataframe with 3 Columns: 1. A combination idx for the 2 drugs, y_test, pred
def primaryMetric(obs):
    import numpy as np
    import pandas as pd
    weighted_corr = []
    weights = []
    for i in set(obs['combination_idx']):

        n = len(obs.loc[obs['combination_idx'] == i])

        if (np.var(obs["y_test"][obs['combination_idx'] == i]) == 0 and n > 1):
            weighted_corr.append(0)
            weights.append(np.sqrt(n-1))
        elif (n > 1):
            weighted_corr.append(np.sqrt(n-1) * np.corrcoef(
                obs.loc[obs['combination_idx'] == i]["y_test"], obs.loc[obs['combination_idx'] == i]["pred"])[0, 1])
            weights.append(np.sqrt(n-1))
    df = pd.DataFrame({"corr": weighted_corr, "weights": weights}).dropna()
    return(sum(df["corr"])/sum(df["weights"]))
