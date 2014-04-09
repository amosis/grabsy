#!/bin/bash
# grabsy.sh - # Change the default destination folder for os x screenshots.
# 
# USAGE
# sh grabsy.sh <DIRNAME> 
#       to make that the default destination for screenshots
# sh grabsy.sh
#       to revert to your default destination.  I didn't wanteit on the ~/Desktop, but you might.  Edit the config below.
# 
# you can edit your path so you dont have to type sh or ./ or whatever.
# I tested this in bash on os x mavericks.  it probably won't work anywhere else.
# 
# Cobbled together by Amos Brown.

#DEFAULT_DIR=~/Desktop
DEFAULT_DIR=~/Documents/Screenshots
CHANGE_TO_DIR=$1

DIR_VAR=$DEFAULT_DIR

echo "Changing screenshot directory to $CHANGE_TO_DIR"

DIR_VAR=$DEFAULT_DIR"/"$CHANGE_TO_DIR
mkdir -p $DIR_VAR
echo "$DIR_VAR"

defaults write com.apple.screencapture location $DIR_VAR
killall SystemUIServer


