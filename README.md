# auto_project
Automatically create a repository with all necessary files and folders then create the initial commit.

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

#### .my_commands.sh:
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
