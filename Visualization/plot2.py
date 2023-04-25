# Import libraries
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import scipy.stats
import seaborn as sn

#reading second dataset
df2=pd.read_csv("data2.csv")
sn.relplot(x ="salary", y ="age",hue='part.of.germany',data = df2)
plt.legend()
plt.show()