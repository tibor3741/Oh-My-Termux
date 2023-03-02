#!/bin/bash
echo search: 
read varname
grep -R -no messages "$varname" /data/data/com.termux/files/
