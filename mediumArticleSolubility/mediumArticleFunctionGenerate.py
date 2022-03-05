# function to compute 3 molecular descriptors in Rdkit

import numpy as np
import pandas as pd
from rdkit.Chem import Descriptors

def generate(molList, verbose=False):
    
    computedKPIs = []

    for mol in molList:
        tempList = [
            Descriptors.MolLogP(mol),
            Descriptors.MolWt(mol),
            Descriptors.NumRotatableBonds(mol)
        ]
        computedKPIs.append(tempList)
    
    columnNames=["MolLogP","MolWt","NumRotatableBonds"]
    descriptors = pd.DataFrame(data=computedKPIs,columns=columnNames)

    return descriptors

