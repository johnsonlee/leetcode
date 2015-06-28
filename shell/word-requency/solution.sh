#!/bin/bash

# awk '{
#     for (i = 1; i <= NF; i++) {
#         freq[$i] += 1;
#     }
# } END {
#     for (i in freq) {
#         print i, freq[i];
#     }
# }' words.txt | sort -rnk 2

sed 'y/ /\n/' words.txt | sed '/^$/d' | sort | uniq -c | sort -nr | awk '{print $2, $1}'
