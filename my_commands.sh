#!/bin/bash
# create repository:
function auto_project() {
    cd
    cd PATH
    mkdir $1
    cd $1
    git init
    touch README.md
    mkdir data
    mkdir notebooks
    touch requirements.txt
    touch setup.py
    mkdir $1
    cd data
    touch raw
    touch processed
    cd /Users/henriwoodcock/Documents/Code/data_projects/$1
    git add .
    git commit -m "Initial commit"
}
