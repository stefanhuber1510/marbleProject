# Where do I get obs from? -- try manually, thats any test set
def getPrimary(obs, pred):
    pred = pred[match(obs[['CELL_LINE', 'COMBINATION_ID']], pred[[
                      'CELL_LINE', 'COMBINATION_ID']])]  # not sure what I do here?
    pred['COMBINATION_ID'] = pred['COMBINATION_ID'].str.replace(" ", "")
    R = []
    w = []
    for i in set(obs['COMBINATION_ID']):
        n = len(obs.loc[obs['COMBINATION_ID'] == i])
        if (var(pred.loc[pred['COMBINATION_ID'] == i, 'PREDICTION']) == 0 and n > 1):
            R.append(0)
            w.append(sqrt(n-1))
        elif (n > 1):
            R.append(sqrt(n-1) * cor(obs.loc[obs['COMBINATION_ID'] == i,
                     'SYNERGY_SCORE'], pred.loc[pred['COMBINATION_ID'] == i, 'PREDICTION']))
            w.append(sqrt(n-1))
    return(sum(R)/sum(w))


def getTieBreak(obs, pred):
    maxCor = obs.groupby('COMBINATION_ID')['SYNERGY_SCORE'].max()
    synCombi = list(maxCor.loc[maxCor >= 20].index)
    getPrimary(obs.loc[obs['COMBINATION_ID'].isin(synCombi)],
               pred.loc[pred['COMBINATION_ID'].isin(synCombi)])
