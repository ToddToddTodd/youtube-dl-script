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
# read -p 'Where do you want to save your videos?' savelocation

youtube-dl \
--verbose \
--ignore-errors \
--merge-output-format mkv \
--add-metadata \
--continue \
--no-call-home \
--write-description \
--output '~/Desktop/youtube-dl/%(playlist)s/%(playlist_index)s - %(title)s - %(uploader)s. - %(upload_date)s.%(ext)s' \
--download-archive '~/Desktop/youtube-dl/favorites-archive.txt' \
$link 2>> ~/Desktop/youtube-dl/favorites-errors.txt

# --username $username \
# --password $password \
# --twofactor $twofactor \

# --download-archive $savelocation \