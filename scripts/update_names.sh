#! /bin/bash

URLS="https://csdms.colorado.edu/wiki/CSN_Quantity_Templates
      http://csdms.colorado.edu/wiki/CSN_Object_Templates
      http://csdms.colorado.edu/wiki/CSN_Operation_Templates
      http://csdms.colorado.edu/wiki/CSN_Examples"

snscrape --no-headers $URLS | cat - names.txt | sort | uniq > names.txt
