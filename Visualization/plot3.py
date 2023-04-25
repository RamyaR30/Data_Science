# Import libraries
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import scipy.stats
import seaborn as sn

#reading the third dataset
df3=pd.read_csv("data3.csv")
df3.hist(column='height', bins=30, grid=False, figsize=(8,8), color='#86bf91', zorder=2, rwidth=0.9)
avg=df3['height'].mean()
tallest=df3['height'].max()
shortest=df3['height'].min()
#average line
plt.axvline(avg, color='k', linestyle='dashed', linewidth=1)
min_ylim, max_ylim = plt.ylim()
plt.text(avg*0.52, max_ylim*0.77, 'Average height: {:.2f}'.format(avg))
plt.text(tallest*0.4, max_ylim*0.8, 'Maximum height : {:.2f}'.format(tallest))
plt.text(shortest*1.34, max_ylim*0.83, 'Minimum height : {:.2f}'.format(shortest))
plt.xlabel('Height of Kung San people (in cms)')
plt.ylabel('Number of people having particular height')
plt.title('Height Analysis of Kung San people')
plt.show()