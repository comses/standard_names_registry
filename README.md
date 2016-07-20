Master List of CSDMS Standard Names
===================================

Scrape names from the CSDMS Wiki
--------------------------------

    $ snscrape --no-headers \
        https://csdms.colorado.edu/wiki/CSN_Quantity_Templates \
        http://csdms.colorado.edu/wiki/CSN_Object_Templates \
        http://csdms.colorado.edu/wiki/CSN_Operation_Templates \
        http://csdms.colorado.edu/wiki/CSN_Examples > scraped_names.txt

Merge with current master list
------------------------------

    $ snscrape --no-headers \
        https://csdms.colorado.edu/wiki/CSN_Quantity_Templates \
        http://csdms.colorado.edu/wiki/CSN_Object_Templates \
        http://csdms.colorado.edu/wiki/CSN_Operation_Templates \
        http://csdms.colorado.edu/wiki/CSN_Examples | cat - names.txt | sort | uniq > names.txt
