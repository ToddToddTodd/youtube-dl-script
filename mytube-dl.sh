#!/bin/bash
#my youtube-dl script

# read -p 'Username: ' username
# echo ""
# read -sp 'Password: ' password
# echo ""
# echo ""
# read -p 'Two Factor authentication: ' twofactor
# echo ""
read -p 'Your Public YouTube Favorites Link: ' link
# echo ""
read -e -p "Where do you want to save your videos?" SOURCE_DIR

youtube-dl \
--verbose \
--ignore-errors \
--merge-output-format mkv \
--add-metadata \
--continue \
--no-call-home \
--write-description \
--output $SOURCE_DIR'/%(playlist)s/%(playlist_index)s - %(title)s - %(uploader)s. - %(upload_date)s.%(ext)s' \
--download-archive $SOURCE_DIR'/favorites-archive.txt' \
$link 2>> $SOURCE_DIR'/favorites-errors.txt'

# --username $username \
# --password $password \
# --twofactor $twofactor \

# --download-archive $savelocation \
