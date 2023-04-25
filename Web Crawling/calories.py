# Required Libraries
import pandas as pd
import requests
from bs4 import BeautifulSoup


#RQ: How much fruits (in grams) should an adult human consume in a day in order to meet their calorie deficit diet requirements?

# Getting data from the website to be crawled
r=requests.get('https://www.calories.info/food/fruits')
soup=BeautifulSoup(r.content,'lxml')
table_body=soup.find('tbody')
rows = table_body.find_all('tr')

# Storing the retrieved data into a table
table_list=[]
for row in rows:
    cols=row.find_all('td')
    cols=[x.text.strip() for x in cols]
    data = {'Fruit':cols[0], 'Serving':cols[1], 'Calories': cols[4]}  
    table_list.append(data.values())
print("Data Retrieved")

# Assigning attribute names
headers=['Fruit','Serving','Calories']
df=pd.DataFrame(table_list, columns=headers)
df.head()

# Saving the data to a csv file
df.to_csv('fruit_calories.csv', index=False)
print("Scraped data has been saved to fruit_calories.csv")

