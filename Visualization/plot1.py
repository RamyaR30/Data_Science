# Import libraries
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import scipy.stats
import seaborn as sn


#Reading the first dataset
df=pd.read_csv("data1.csv")
data_per = df.groupby('religion').agg(percentage =('religion', lambda x: len(x) / len(df) * 100))

#Seaborn barplot
sn.set_style("whitegrid")
bar,ax = plt.subplots(figsize=(10,6))
ax = sn.barplot(x=data_per.index, y='percentage', data=data_per, ci=None, palette="muted",orient='v',color='salmon',order = df['religion'].value_counts().index )
ax.set_title("Religion of People in Germany ", fontsize=15)
ax.set_xlabel ("Religion Type")
ax.set_ylabel ("Percentage")

# calculate the percentages and annotate the sns barplot
for rect in ax.patches:
    ax.text (rect.get_x() + rect.get_width() / 2,rect.get_height(),"%.1f%%"% rect.get_height(), weight='bold',)
ax.set_xticklabels(ax.get_xticklabels(), rotation=40, ha="right")
ax.set(ylabel="Percent")
plt.tight_layout()
plt.show()