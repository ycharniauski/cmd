#!/bin/bash
git status | grep -p "\t" | grep -v "modified:   src/local_modules/"