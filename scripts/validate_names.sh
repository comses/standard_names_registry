#! /bin/bash

names_file=$1

snvalidate $names_file || (echo "ERROR: $names_file contains bad names" && exit 1)
LC_ALL=C sort --check $names_file || (echo "ERROR: $names_file is not sorted properly" && exit 2)
