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
  * see rmd file [here](https://cdn.rawgit.com/Kevinisagirl/Wikipedia-Revisions-1000-articleid-sample/7281aa8b/1000articlerevisions.html)

* Analyze & visualize new subsample of 1000 older unique article ids (pre-2005) and the revisions associated with each unique id  
  * see rmd file [here](https://cdn.rawgit.com/Kevinisagirl/Wikipedia-Revisions-1000-articleid-sample/2511b394/1000olderarticlerevisions.html)

* Scale data analysis to entire data set  
 * Create [interactive visualization](https://cdn.rawgit.com/Kevinisagirl/Wikipedia-Revisions-1000-articleid-sample/576287ed/MonthlyTimeline/monthly_timeline.html) monthly timeline for all revisions  
   * See `/MonthlyTimeline` folder   
 * Generate word clouds for most popular article revisions per year  
   * See `/wikiscraper` folder   
 

# Presentation  
See slides [here](https://github.com/Kevinisagirl/Wikipedia-Revisions-1000-articleid-sample/blob/master/Wikipedia%20Edits%20Analysis.pdf).  


# File Tree
```
.
├── 1000articlerevisions.Rmd
├── 1000olderarticlerevisions.Rmd
├── 1000olderarticlerevisions.html
├── 1000olderarticlerevisions.knit.md
├── 1000olderarticlerevisions.utf8.md
├── 1000olderarticlerevisions_cache
│   └── html
│       ├── __packages
│       ├── unnamed-chunk-10_6e895711f3dee5f0caa7b4aca63944bf.RData
│       ├── unnamed-chunk-10_6e895711f3dee5f0caa7b4aca63944bf.rdb
│       ├── unnamed-chunk-10_6e895711f3dee5f0caa7b4aca63944bf.rdx
│       ├── unnamed-chunk-11_c2dea54dee89e1e2938f836602980000.RData
│       ├── unnamed-chunk-11_c2dea54dee89e1e2938f836602980000.rdb
│       ├── unnamed-chunk-11_c2dea54dee89e1e2938f836602980000.rdx
│       ├── unnamed-chunk-12_f833c674a257b6566b8b997cdf6c5b0b.RData
│       ├── unnamed-chunk-12_f833c674a257b6566b8b997cdf6c5b0b.rdb
│       ├── unnamed-chunk-12_f833c674a257b6566b8b997cdf6c5b0b.rdx
│       ├── unnamed-chunk-13_9274dc8cea54c8faec39bdb2c6e161b2.RData
│       ├── unnamed-chunk-13_9274dc8cea54c8faec39bdb2c6e161b2.rdb
│       ├── unnamed-chunk-13_9274dc8cea54c8faec39bdb2c6e161b2.rdx
│       ├── unnamed-chunk-14_8aa1e7098dac65ee378342aaacba3951.RData
│       ├── unnamed-chunk-14_8aa1e7098dac65ee378342aaacba3951.rdb
│       ├── unnamed-chunk-14_8aa1e7098dac65ee378342aaacba3951.rdx
│       ├── unnamed-chunk-1_270552291a1604a12d5352492614104f.RData
│       ├── unnamed-chunk-1_270552291a1604a12d5352492614104f.rdb
│       ├── unnamed-chunk-1_270552291a1604a12d5352492614104f.rdx
│       ├── unnamed-chunk-2_67fdd3eab04485654b47a2cbf3b6cab2.RData
│       ├── unnamed-chunk-2_67fdd3eab04485654b47a2cbf3b6cab2.rdb
│       ├── unnamed-chunk-2_67fdd3eab04485654b47a2cbf3b6cab2.rdx
│       ├── unnamed-chunk-3_caca7815e198b30f2892682da0731b93.RData
│       ├── unnamed-chunk-3_caca7815e198b30f2892682da0731b93.rdb
│       ├── unnamed-chunk-3_caca7815e198b30f2892682da0731b93.rdx
│       ├── unnamed-chunk-4_a58597f82d6191f4a65f7395aa1751d6.RData
│       ├── unnamed-chunk-4_a58597f82d6191f4a65f7395aa1751d6.rdb
│       ├── unnamed-chunk-4_a58597f82d6191f4a65f7395aa1751d6.rdx
│       ├── unnamed-chunk-5_c91bfd0902d86f33dadff4b71034893e.RData
│       ├── unnamed-chunk-5_c91bfd0902d86f33dadff4b71034893e.rdb
│       ├── unnamed-chunk-5_c91bfd0902d86f33dadff4b71034893e.rdx
│       ├── unnamed-chunk-6_5b161431ee656750083f7b8bb6c17304.RData
│       ├── unnamed-chunk-6_5b161431ee656750083f7b8bb6c17304.rdb
│       ├── unnamed-chunk-6_5b161431ee656750083f7b8bb6c17304.rdx
│       ├── unnamed-chunk-7_e0703be9650f27267325662a646db1af.RData
│       ├── unnamed-chunk-7_e0703be9650f27267325662a646db1af.rdb
│       ├── unnamed-chunk-7_e0703be9650f27267325662a646db1af.rdx
│       ├── unnamed-chunk-8_3ba2c08d0c3ec36fb0c9454b12edc361.RData
│       ├── unnamed-chunk-8_3ba2c08d0c3ec36fb0c9454b12edc361.rdb
│       ├── unnamed-chunk-8_3ba2c08d0c3ec36fb0c9454b12edc361.rdx
│       ├── unnamed-chunk-9_854f47631216bedb64b7b922ebab9034.RData
│       ├── unnamed-chunk-9_854f47631216bedb64b7b922ebab9034.rdb
│       └── unnamed-chunk-9_854f47631216bedb64b7b922ebab9034.rdx
├── 1000olderarticlerevisions_files
│   └── figure-html
│       ├── unnamed-chunk-11-1.png
│       ├── unnamed-chunk-12-1.png
│       ├── unnamed-chunk-13-1.png
│       ├── unnamed-chunk-14-1.png
│       ├── unnamed-chunk-15-1.png
│       ├── unnamed-chunk-16-1.png
│       ├── unnamed-chunk-17-1.png
│       ├── unnamed-chunk-18-1.png
│       ├── unnamed-chunk-18-2.png
│       ├── unnamed-chunk-18-3.png
│       ├── unnamed-chunk-18-4.png
│       ├── unnamed-chunk-18-5.png
│       ├── unnamed-chunk-18-6.png
│       ├── unnamed-chunk-18-7.png
│       ├── unnamed-chunk-18-8.png
│       ├── unnamed-chunk-19-1.png
│       ├── unnamed-chunk-19-2.png
│       ├── unnamed-chunk-19-3.png
│       ├── unnamed-chunk-20-1.png
│       ├── unnamed-chunk-20-2.png
│       ├── unnamed-chunk-20-3.png
│       ├── unnamed-chunk-20-4.png
│       ├── unnamed-chunk-20-5.png
│       ├── unnamed-chunk-21-1.png
│       ├── unnamed-chunk-21-2.png
│       ├── unnamed-chunk-21-3.png
│       ├── unnamed-chunk-22-1.png
│       ├── unnamed-chunk-22-10.png
│       ├── unnamed-chunk-22-11.png
│       ├── unnamed-chunk-22-12.png
│       ├── unnamed-chunk-22-2.png
│       ├── unnamed-chunk-22-3.png
│       ├── unnamed-chunk-22-4.png
│       ├── unnamed-chunk-22-5.png
│       ├── unnamed-chunk-22-6.png
│       ├── unnamed-chunk-22-7.png
│       ├── unnamed-chunk-22-8.png
│       ├── unnamed-chunk-22-9.png
│       ├── unnamed-chunk-23-1.png
│       ├── unnamed-chunk-23-2.png
│       ├── unnamed-chunk-24-1.png
│       ├── unnamed-chunk-25-1.png
│       ├── unnamed-chunk-25-2.png
│       ├── unnamed-chunk-26-1.png
│       ├── unnamed-chunk-26-10.png
│       ├── unnamed-chunk-26-11.png
│       ├── unnamed-chunk-26-12.png
│       ├── unnamed-chunk-26-2.png
│       ├── unnamed-chunk-26-3.png
│       ├── unnamed-chunk-26-4.png
│       ├── unnamed-chunk-26-5.png
│       ├── unnamed-chunk-26-6.png
│       ├── unnamed-chunk-26-7.png
│       ├── unnamed-chunk-26-8.png
│       ├── unnamed-chunk-26-9.png
│       ├── unnamed-chunk-27-1.png
│       ├── unnamed-chunk-28-1.png
│       ├── unnamed-chunk-28-2.png
│       ├── unnamed-chunk-29-1.png
│       ├── unnamed-chunk-29-2.png
│       ├── unnamed-chunk-30-1.png
│       ├── unnamed-chunk-30-2.png
│       ├── unnamed-chunk-31-1.png
│       ├── unnamed-chunk-31-2.png
│       ├── unnamed-chunk-32-1.png
│       ├── unnamed-chunk-32-2.png
│       ├── unnamed-chunk-33-1.png
│       ├── unnamed-chunk-33-2.png
│       ├── unnamed-chunk-34-1.png
│       ├── unnamed-chunk-34-2.png
│       ├── unnamed-chunk-34-3.png
│       ├── unnamed-chunk-35-1.png
│       ├── unnamed-chunk-35-2.png
│       ├── unnamed-chunk-36-1.png
│       ├── unnamed-chunk-36-2.png
│       ├── unnamed-chunk-37-1.png
│       ├── unnamed-chunk-37-2.png
│       ├── unnamed-chunk-4-1.png
│       ├── unnamed-chunk-5-1.png
│       ├── unnamed-chunk-6-1.png
│       ├── unnamed-chunk-7-1.png
│       ├── unnamed-chunk-7-2.png
│       ├── unnamed-chunk-8-1.png
│       └── unnamed-chunk-9-1.png
├── MonthlyTimeline
│   ├── convert_to_long.R
│   ├── monthly_timeline.html
│   └── monthly_timeline_files
│       ├── bootstrap-3.3.5
│       │   ├── css
│       │   │   ├── bootstrap-theme.css
│       │   │   ├── bootstrap-theme.css.map
│       │   │   ├── bootstrap-theme.min.css
│       │   │   ├── bootstrap.css
│       │   │   ├── bootstrap.css.map
│       │   │   ├── bootstrap.min.css
│       │   │   ├── cerulean.min.css
│       │   │   ├── cosmo.min.css
│       │   │   ├── flatly.min.css
│       │   │   ├── fonts
│       │   │   │   ├── Lato.ttf
│       │   │   │   ├── LatoBold.ttf
│       │   │   │   ├── LatoItalic.ttf
│       │   │   │   ├── NewsCycle.ttf
│       │   │   │   ├── NewsCycleBold.ttf
│       │   │   │   ├── OpenSans.ttf
│       │   │   │   ├── OpenSansBold.ttf
│       │   │   │   ├── OpenSansBoldItalic.ttf
│       │   │   │   ├── OpenSansItalic.ttf
│       │   │   │   ├── OpenSansLight.ttf
│       │   │   │   ├── OpenSansLightItalic.ttf
│       │   │   │   ├── Raleway.ttf
│       │   │   │   ├── RalewayBold.ttf
│       │   │   │   ├── Roboto.ttf
│       │   │   │   ├── RobotoBold.ttf
│       │   │   │   ├── RobotoLight.ttf
│       │   │   │   ├── RobotoMedium.ttf
│       │   │   │   ├── SourceSansPro.ttf
│       │   │   │   ├── SourceSansProBold.ttf
│       │   │   │   ├── SourceSansProItalic.ttf
│       │   │   │   ├── SourceSansProLight.ttf
│       │   │   │   └── Ubuntu.ttf
│       │   │   ├── journal.min.css
│       │   │   ├── lumen.min.css
│       │   │   ├── paper.min.css
│       │   │   ├── readable.min.css
│       │   │   ├── sandstone.min.css
│       │   │   ├── simplex.min.css
│       │   │   ├── spacelab.min.css
│       │   │   ├── united.min.css
│       │   │   └── yeti.min.css
│       │   ├── fonts
│       │   │   ├── glyphicons-halflings-regular.eot
│       │   │   ├── glyphicons-halflings-regular.svg
│       │   │   ├── glyphicons-halflings-regular.ttf
│       │   │   ├── glyphicons-halflings-regular.woff
│       │   │   └── glyphicons-halflings-regular.woff2
│       │   ├── js
│       │   │   ├── bootstrap.js
│       │   │   ├── bootstrap.min.js
│       │   │   └── npm.js
│       │   └── shim
│       │       ├── html5shiv.min.js
│       │       └── respond.min.js
│       ├── htmlwidgets-1.0
│       │   └── htmlwidgets.js
│       ├── jquery-1.11.3
│       │   └── jquery.min.js
│       ├── timeline-0.4
│       │   ├── lib
│       │   │   └── vis-4.16.1
│       │   │       ├── img
│       │   │       │   ├── network
│       │   │       │   │   ├── acceptDeleteIcon.png
│       │   │       │   │   ├── addNodeIcon.png
│       │   │       │   │   ├── backIcon.png
│       │   │       │   │   ├── connectIcon.png
│       │   │       │   │   ├── cross.png
│       │   │       │   │   ├── cross2.png
│       │   │       │   │   ├── deleteIcon.png
│       │   │       │   │   ├── downArrow.png
│       │   │       │   │   ├── editIcon.png
│       │   │       │   │   ├── leftArrow.png
│       │   │       │   │   ├── minus.png
│       │   │       │   │   ├── plus.png
│       │   │       │   │   ├── rightArrow.png
│       │   │       │   │   ├── upArrow.png
│       │   │       │   │   └── zoomExtends.png
│       │   │       │   └── timeline
│       │   │       │       └── delete.png
│       │   │       ├── vis.min.css
│       │   │       └── vis.min.js
│       │   ├── timevis.css
│       │   ├── timevis.js
│       │   └── timevis.yaml
│       ├── timevis-binding-0.4
│       │   └── timevis.js
│       └── vis-4.16.1
│           ├── img
│           │   ├── network
│           │   │   ├── acceptDeleteIcon.png
│           │   │   ├── addNodeIcon.png
│           │   │   ├── backIcon.png
│           │   │   ├── connectIcon.png
│           │   │   ├── cross.png
│           │   │   ├── cross2.png
│           │   │   ├── deleteIcon.png
│           │   │   ├── downArrow.png
│           │   │   ├── editIcon.png
│           │   │   ├── leftArrow.png
│           │   │   ├── minus.png
│           │   │   ├── plus.png
│           │   │   ├── rightArrow.png
│           │   │   ├── upArrow.png
│           │   │   └── zoomExtends.png
│           │   └── timeline
│           │       └── delete.png
│           ├── vis.min.css
│           └── vis.min.js
├── README.md
├── Wikipedia\ Edits\ Analysis.pdf
├── Wikipedia-Revisions-1000-articleid-sample.Rproj
├── Wordclouds
│   ├── 200\ -\ 1.jpg
│   ├── 200\ -\ 2.jpg
│   ├── 200\ -\ 3.jpg
│   ├── 200\ -\ 4.jpg
│   ├── 200\ -\ 5.jpg
│   ├── 200\ -\ 6.jpg
│   ├── 200\ -\ 7.jpg
│   ├── all_years_wc.jpg
│   ├── wiki_wordclouds_timeline.Rmd
│   └── wiki_wordclouds_timeline.html
├── data
│   ├── 1000articleids.txt
│   ├── 1000categories.txt
│   ├── Categories_all_oldenough.txt
│   ├── all_oldenough_indicators.txt
│   ├── all_revisions_1000_articles.txt
│   ├── articlesthatareoldenough.txt
│   ├── badtitles1000sample.txt
│   └── unique_oldenough_articleids.gz
├── img
│   ├── article-revisions-by-month-sample1.png
│   ├── article-revisions-by-year-date-by-indicator-with-na.png
│   ├── article-revisions-by-year-date-by-indicator.png
│   ├── article-revisions-by-year-date.png
│   ├── article-revisions-normalized-by-month-sample1.png
│   ├── articles-by-total-revisions-facet.png
│   ├── articles-by-total-revisions-normalized-by-first-revision.png
│   ├── articles-first-revised-in-oct-2002.png
│   ├── first-article-revisions-by-year-month.png
│   ├── high-revisions-per-day-articles.png
│   ├── high-revisions-per-month-articles.png
│   ├── percent-revision-since-created-last-quarter.png
│   ├── percent-revision-since-created-no-200204.png
│   └── percent-revision-since-created.png
├── img-older
│   ├── article-count-by-quarter-sample2.png
│   ├── article-revisions-60months-facet-sample2.png
│   ├── article-revisions-60months-sample2.png
│   ├── article-revisions-by-month-melt-sample2.png
│   ├── article-revisions-by-month-normalized-sample2.png
│   ├── article-revisions-by-month-sample2.png
│   ├── article-revisions-by-month-since-creation-sample2.png
│   ├── article-revisions-by-month-since-first-revision-sample2.png
│   ├── article-revisions-by-year-deleted-articleids.png
│   ├── article-revisions-filtered-5years-sample2.png
│   ├── article-revisions-quarters1-sample2.png
│   ├── article-revisions-quarters2-sample2.png
│   ├── article-revisions-quarters3-sample2.png
│   ├── article-revisions-quarters4-sample2.png
│   ├── article-revisions-quarters5-sample2.png
│   ├── article-revisions-since-creation-sample2.png
│   ├── articles-per-month-per-quarter-sample2.png
│   ├── color-by-first-revision-date-sample2.png
│   ├── last-quarter-2002-sample2.png
│   ├── last-quarter-sample2.png
│   ├── living-people-sample2.png
│   ├── living-people-top-points-sample2.png
│   ├── months-since-first-revision-facet-1-2sample2.png
│   ├── months-since-first-revision-facet-10-25sample2.png
│   ├── months-since-first-revision-facet-100-500sample2.png
│   ├── months-since-first-revision-facet-25-100sample2.png
│   ├── months-since-first-revision-facet-3-10sample2.png
│   ├── months-since-first-revision-facet-500-sample2.png
│   ├── months-since-first-revision-facet-scaled-1-2sample2.png
│   ├── months-since-first-revision-facet-scaled-10-25sample2.png
│   ├── months-since-first-revision-facet-scaled-100-500sample2.png
│   ├── months-since-first-revision-facet-scaled-25-100sample2.png
│   ├── months-since-first-revision-facet-scaled-3-10sample2.png
│   ├── months-since-first-revision-facet-scaled-500-sample2.png
│   ├── monts-since-first-revision-sample2.png
│   ├── percents-by-tags-without-oct2002-without-nas.png
│   ├── percents-by-tags-without-oct2002.png
│   └── percents-by-tags.png
├── img-other
│   ├── articles-months-since-first-revision-melted-subsample1.png
│   ├── articles-months-since-first-revision-subsample1.png
│   ├── articles-normalized-by-total-5years-facet-1-2-subsample1.png
│   ├── articles-normalized-by-total-5years-facet-10-25-subsample1.png
│   ├── articles-normalized-by-total-5years-facet-100-500-subsample1.png
│   ├── articles-normalized-by-total-5years-facet-25-100-subsample1.png
│   ├── articles-normalized-by-total-5years-facet-3-10-subsample1.png
│   ├── articles-normalized-by-total-5years-facet-500--subsample1.png
│   ├── articles-normalized-by-total-5years-facet-over500revis-1-2-subsample1.png
│   ├── articles-normalized-by-total-5years-facet-over500revis-10-25-subsample1.png
│   ├── articles-normalized-by-total-5years-facet-over500revis-100-500-subsample1.png
│   ├── articles-normalized-by-total-5years-facet-over500revis-25-100-subsample1.png
│   ├── articles-normalized-by-total-5years-facet-over500revis-3-10-subsample1.png
│   ├── articles-normalized-by-total-5years-facet-over500revis-500--subsample1.png
│   ├── articles-normalized-by-total-5years-facet-subsample1.png
│   ├── articles-normalized-by-total-5years-faceted-subsample1.png
│   ├── articles-normalized-by-total-5years-subsample1.png
│   ├── articles-normalized-by-total-melted-subsample1.png
│   ├── articles-normalized-by-total-subsample1.png
│   ├── articles-normalized-by-total-truncated-subsample1.png
│   ├── articles-time-since-first-creation-subsample1.png
│   ├── filtered-revision-counts-subsample1.png
│   └── why-throwout-articles-after-first-revision-subsample1.png
└── wikiscraper
    ├── 1000articleids.txt
    ├── 1000categories.txt
    ├── Categories_all_oldenough.txt
    ├── all_oldenough_indicators.txt
    ├── badtitles.txt
    ├── badtitles1000sample.txt
    ├── unique_all_articleids
    ├── unique_oldenough_articleids
    ├── wikiscrapingCategories.py
    └── wikiscrapingIndicators.py
```

