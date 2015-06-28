#!/bin/bash

# tail -n +10 file.txt | head -n 1

# awk 'FNR==10{print $0}' file.txt

sed -n '10p' file.txt
