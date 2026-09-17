#!/bin/bash

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
  | sed 's/^[[:space:]]*//; s/[[:space:]]*$//' \
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
awk -F',' '
{
    n = split($3, themes, /\+/)
    has_cs = has_se = has_rb = 0

    for (i = 1; i <= n; i++) {
        gsub(/^[ \t]+/, "", themes[i])
        gsub(/[ \t]+$/, "", themes[i])

        if (themes[i] == "Computer Systems") has_cs = 1
        if (themes[i] == "Space Engineering") has_se = 1
        if (themes[i] == "Robotics") has_rb = 1
    }

    if (has_cs && has_se && has_rb) print $0
}' "$INPUT" > "$OUT/joined.csv"

cat "$OUT/joined.csv"
echo "Subtask 3 was completed"
echo "======================================"

echo "======================================"
echo "Subtask 4"
echo "Subtask 4 was completed"
echo "======================================"