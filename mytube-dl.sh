#!/bin/bash
#my youtube-dl script

# read -p 'Username: ' username
# echo ""
# read -sp 'Password: ' password
# echo ""
# echo ""
# read -p 'Two Factor authentication: ' twofactor
# echo ""
read -p 'Your YouTube Favorites Link: ' link
# echo ""
read -e -p 'Where do you want to save your videos: ' SOURCE_DIR

read -p 'What do you want your folder to be called? ' SOURCE_NAME

mkdir -p $SOURCE_NAME

SAVE_LOCATION="$SOURCE_DIR$SOURCE_NAME"

youtube-dl \
--verbose \
--ignore-errors \
--merge-output-format mkv \
--add-metadata \
--continue \
--no-call-home \
--write-description \
--output $SAVE_LOCATION'/%(playlist)s/%(playlist_index)s - %(title)s - %(uploader)s. - %(upload_date)s.%(ext)s' \
--download-archive $SAVE_LOCATION'/favorites-archive.txt' \
$link 

# 2>> $SAVE_LOCATION'/favorites-errors.txt'

# --username $username \
# --password $password \
# --twofactor $twofactor \