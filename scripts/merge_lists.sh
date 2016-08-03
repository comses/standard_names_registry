#! /bin/bash

export LC_ALL=C
cat $* | sort | uniq
