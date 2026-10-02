#!/usr/bin/env bash

INPUT="faculty_5.csv"
OUT="data_analysis"

echo "Task 2"
echo "======================================"
echo "Subtask 0"
mkdir -p "$OUT"
ls -d "$OUT"
echo "Subtask 0 was completed"
echo "======================================"

echo "======================================"
echo "Subtask 1"
cut -d',' -f3 "$INPUT" \
  | tr -s '+' '\n' \
  | sed 's/^[[:space:]]*//' \
  | sed 's/[[:space:]]*$//' \
  | sed '/^$/d' \
  | sort -u > "$OUT/research_themes.txt"

count=$(wc -l < "$OUT/research_themes.txt")
echo "$count" >> "$OUT/research_themes.txt"

cat "$OUT/research_themes.txt"
echo "Subtask 1 was completed"
echo "======================================"

echo "======================================"
echo "Subtask 2"
cut -d',' -f3 "$INPUT" \
  | tr -s '+' '\n' \
  | sed 's/^[[:space:]]*//; s/[[:space:]]*$//' \
  | sed '/^$/d' \
  | sort | uniq -c \
  | awk '$1 < 7 { sub(/^[[:space:]]*[0-9]+[[:space:]]+/, ""); print }' \
  | sort > "$OUT/small_groups.txt"

cat "$OUT/small_groups.txt"
echo "Subtask 2 was completed"
echo "======================================"

echo "======================================"
echo "Subtask 3"
grep "Computer Systems" "$INPUT" \
| grep "Space Engineering" \
| grep "Robotics" \
| cut -d',' -f1-2 > "$OUT/joined.csv"

cat "$OUT/joined.csv"
echo "Subtask 3 was completed"
echo "======================================"

echo "======================================"
echo "Subtask 4"
cut -d',' -f1 "$INPUT" \
  | sed 's/^[[:space:]]*//' \
  | sed 's/[[:space:]]*$//' \
  | sed '/^$/d' \
  | sort > "$OUT/sorted_names.txt"

count=$(wc -l < "$OUT/sorted_names.txt")
echo "$count" >> "$OUT/sorted_names.txt"

cat "$OUT/sorted_names.txt"
echo "Subtask 4 was completed"
echo "======================================"