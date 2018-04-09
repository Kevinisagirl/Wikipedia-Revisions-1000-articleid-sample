
from bs4 import BeautifulSoup
from datetime import datetime
import requests
import os
import sys

# start a timer
startTime = datetime.now()
# name outfile
filename = 'result.txt'
try:
    # delete previous version of outfile
    os.remove(filename)
except FileNotFoundError:
    pass

# info needed to access the pages by url
baseurl = 'http://en.wikipedia.org/?curid='
article_ids = []
with open("unique_oldenough_articleids") as infile:
    for line in infile:
        article_ids.append(line.rstrip('\n'))

def scraping(id):
    
    url = baseurl + id
    # get contents from url
    content = requests.get(url).content
    # get soup
    soup = BeautifulSoup(content,'lxml') # choose lxml parser
    # find the tag housing the categories
    tag = soup.find('div', {'id' : 'mw-normal-catlinks'})
    # try to get all the links (will not exist if the url is a "bad title" <- save those article_ids)
    try:
        links = tag.find('ul')
    except AttributeError:
        with open("badtitles.txt", 'a') as b:
            b.write(id + '\n')
        return
    # grab all the lists of those links
    lists = links.findAll('li')
    # yield the article_id and category text from the links
    for link in lists:
        yield(id + "\x1e" + link.find('a').text + '\n')

    
counter = 0
category_list = []
for article in article_ids:
    
    # scrape the page
    article_categories = scraping(article)
    # add the page categories to the list
    for category in article_categories:
        category_list.append(category)
    # write out and clear the list every so often
    if len(category_list) >= 1000:
        with open(filename, 'a') as f:
            f.writelines(category_list)
        category_list = []
    # print status updates
    counter += 1
    if counter%10000 == 0:
        print(datetime.now(), ":", counter, "out of 112,230 in", datetime.now()-startTime)

# write the remaining list elements
with open(filename, 'a') as f:
    f.writelines(category_list)