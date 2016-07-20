#! /bin/bash

names_file=$1

snvalidate $names_file || (echo "ERROR: $names_file contains bad names" && exit 1)
sort $names_file | uniq | diff - $names_file || (echo "ERROR: $names_file is not sorted properly" && exit 2)
