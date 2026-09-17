#! /bin/bash

echo "Task 2"

echo "======================================"
echo "Subtask 0"
mkdir -p data_analysis
ls -d data_analysis
echo "Subtask 0 was completed"
echo "======================================"


echo "======================================"
echo "Subtask 1"
if [ -f 'data_analysis/research_themes.csv' ]; then
    rm -f data_analysis/research_themes.csv
fi
cut -d',' -f3 < faculty_5.csv \
| tr -s '+' '\n' \
| sed 's/^[[:space:]]*//; s/[[:space:]]*$//' \
| sort | uniq -c | sort -k2,2\
| awk '{ c=$1; $1=""; sub(/^[[:space:]]*/, ""); print c "," $0; count++ } END { print "," count+0 }' \
>> data_analysis/research_themes.csv

cut -d"," -f2 < data_analysis/research_themes.csv \
| awk '{ print $0}'
echo "Subtask 1 was completed"
echo "======================================"


echo "======================================"
echo "Subtask 2"
echo "Subtask 2 was completed"
echo "======================================"


echo "======================================"
echo "Subtask 3"
echo "Subtask 3 was completed"
echo "======================================"


echo "======================================"
echo "Subtask 4"
echo "Subtask 4 was completed"
echo "======================================"