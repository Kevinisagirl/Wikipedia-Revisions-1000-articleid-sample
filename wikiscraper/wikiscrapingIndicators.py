
from bs4 import BeautifulSoup
from datetime import datetime
import requests
import os
import sys

# name outfile
startTime = datetime.now()
filename = 'result.txt'
try:
    # delete previous version of outfile
    os.remove(filename)
except FileNotFoundError:
    pass

# grab info needed to access the pages
baseurl = 'http://en.wikipedia.org/?curid='
article_ids = []
with open("unique_oldenough_articleids") as infile:
    for line in infile:
        article_ids.append(line.rstrip('\n'))

def scraping(id):
    category_list = []
    url = baseurl + id
    # get contents from url
    content = requests.get(url).content
    # get soup
    soup = BeautifulSoup(content,'lxml') # choose lxml parser
    # find the tag : <div class="toc">
    tag = soup.findAll('div', {'class' : 'mw-indicator'}) # id="toc" also works

    for ind in tag:
        category_list.append(id + "\x1e" + ind.get('id') + '\n')

    with open(filename, 'a') as f:
        f.writelines(category_list)

counter = 0
for article in article_ids:
    scraping(article)
    counter += 1
    if counter%10000 == 0:
        print(counter, "out of 112,230 in", datetime.now()-startTime)
