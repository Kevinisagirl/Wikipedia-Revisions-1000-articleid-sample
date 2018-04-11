# Wikipedia-Revisions-1000-articleid-sample  

# Authors  
Kevin, Lydia, Fanny, Xiaotai
 
# Data Set
[SNAP (Stanford)](https://snap.stanford.edu/data/wiki-meta.html) ~8GB zipped (~290GB unzipped) file with all of Wikipedia's revisions from its inception in 2001 to January 2008.  

# Questions of Interest
### The lifecycle of a page
* Can we cluster life cycles?
* What were the most revised articles of all time?

### Categories
* What attributes of article edit behavior can we glean from article categories? 
* How does edit behavior reflect major events in news, culture, tech, or history? 
  
# Data Retrieval - MapReduce  
See [this](https://github.com/xiaotaichai/Wikipedia-Edits-Distributed-Computing) repo for code.  
* Randomly Sample 1000 Article IDs 
  * Generate a list of unique article_ids    
  * Collect all article revisions associated with each unique article_id    
* Compare Revisions  
  * Normalize revisions  
  * Look at creation timeline    
* Calculate Metadata for Entire Corpus  
  * repeat steps above for entire dataset instead of sample  
   
# Utilize External Data Sources   
* Web Scraping Wikipedia for Indicators  
  * See `/wikiscraper` folder  

# Analysis   
* Analyze & visualize initial random subsample of 1000 unique article ids and the revisions associated with each unique id  
  * see rmd file [here](https://github.com/Kevinisagirl/Wikipedia-Revisions-1000-articleid-sample/blob/master/1000articlerevisions.Rmd)

* Analyze & visualize new subsample of 1000 older unique article ids (pre-2005) and the revisions associated with each unique id  
  * see rmd file [here](https://cdn.rawgit.com/Kevinisagirl/Wikipedia-Revisions-1000-articleid-sample/faaee07b/1000olderarticlerevisions.html)

* Scale data analysis to entire data set  
 * Create [interactive visualization](https://rawgit.com/Kevinisagirl/Wikipedia-Revisions-1000-articleid-sample/master/MonthlyTimeline/monthly_timeline.html) monthly timeline for all revisions  
   * See `/MonthlyTimeline folder   
 * Generate word clouds for most popular article revisions per year  
   * See `/wikiscraper` folder   
 

# Presentation  
See slides [here](https://github.com/Kevinisagirl/Wikipedia-Revisions-1000-articleid-sample/blob/master/Wikipedia%20Edits%20Analysis.pdf).  

