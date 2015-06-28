#!/bin/bash

awk '{
    for (i = 1; i <= NF; i++) {
        if (NR == 1) {
            rows[i] = $i;
        } else {
            rows[i] = rows[i]" "$i;
        }
    }
} END {
    for (i in rows) {
        print rows[i];
    }
}' file.txt
