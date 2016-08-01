[![Build Status](https://travis-ci.org/csdms/standard_names_registry.svg?branch=master)](https://travis-ci.org/csdms/standard_names_registry)

Master List of CSDMS Standard Names
===================================

Adding new names
----------------

If you would like to add new names to the official CSDMS Standard Names
Registry, please do so by either submitting it as an issue to the
[GitHub issue tracker](https://github.com/csdms/standard_names_registry/issues) or as a pull request that adds your new names to `names.txt`.

Helpful links
-------------

*  [Registry](http://github.com/csdms/standard_names_registry): The
   official registry of CSDMS Standard Names.
*  [standard_names Python package](https:github.com/csdms/standard_names):
   Tools for working with standard names (including a validator).
*  [Peckham, 2014](http://csdms.colorado.edu/mediawiki/images/Peckham_2014_iEMSs.pdf): Extended abstract from IEMSS 2014.
*  [Standard Names on CSDMS.edu](http://csdms.colorado.edu/wiki/CSDMS_Standard_Names): Detailed description of CSDMS Standard Names
*  [The CF-Standard Names](http://cfconventions.org/Data/cf-standard-names/27/build/cf-standard-name-table.html): CF Standard Names for ocean and atmosphere modeling.


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
