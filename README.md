# auto_project
Automatically create a repository with all necessary files and folders then create the initial commit.

## Description
Creates a new repository with the following structure:
```
├── README.md
├── REPOSITORYNAME
├── data
│   ├── raw
│   └── processed
├── notebooks
├── requirements.txt
└── setup.py
```
## Useage
Open a terminal and type:
```
auto_project REPOSITORYNAME
```

## Setup
Make sure you have git installed.

Run the following commands in a terminal window:
```
cd ~
FILE=.bash_profile
if [ -f "$FILE" ]; then
    echo "$FILE exist"
else 
    echo "$FILE does not exist"
    touch .bash_profile
fi

FILE=.bashrc
if [ -f "$FILE" ]; then
    echo "$FILE exist"
else 
    echo "$FILE does not exist"
    touch .bashrc
fi
```

### .my_commands.sh:
Download .my_commands into your home directory so you have ~/.my_commands.sh. Change the following line in the .my_commands.sh files:
```sh
cd PATH
```
Change PATH to the location you would like the repository to be made.

### .bash_profile setup:
Add the follow lines into your .bash_profile:
```
if [ -s ~/.bashrc ]; then
    source ~/.bashrc;
fi
```
This means when you open a new terminal the .bashrc file will be ran automatically.

### .bashrc setup:
Add the follow lines into your .bashrc:
```
source ~/.my_commands.sh
```
This adds the command so it can be ran from your terminal

## Test if .bash_profile and .bashrc are working
Add the follow lines to the top of your .bashrc:
```
ECHO '.bashrc opened'
```
Add the follow lines to the top of your .bash_profile:
```
ECHO '.bash_profile opened'
```
If the two files are setup correctly, when a terminal is opened the following should be returned:
```
.bash_profile opened
.bashrc opened
