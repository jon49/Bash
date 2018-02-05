#!/bin/bash

bitrate () {
    echo `file "$1" | sed 's/.*, \(.*\)kbps.*/\1/'`
}

filename="$1"
basename=$(basename "$filename")
file="${basename%.*}"
dir=$(dirname "$filename")
echo -n "Filename: $filename"
echo ""
echo -n "Basename: $basename"
echo ""
echo "file: $file"
echo ""
echo "$(bitrate "$filename")"
echo ""

if [ $(bitrate "$filename") -ne 64 ]; then
    tempfile="$dir/"$file"_1.mp3"
    echo -n "tempfile: $tempfile"
    ffmpeg -i "$filename" -vn -ab 64k "$tempfile"
    if [ $? -eq 0 ]; then
        echo -n "64k baby!!!!"
        rm "$filename"
        filename=$tempfile
        echo -n ""
        echo -n "newfilename: $filename"
        echo -n ""
    fi
fi

ffmpeg -i "$filename" -af "atempo=1.7,loudnorm" -ac 1 \
    ~/Downloads/media/cleaned/"$basename"
if [ $? -eq 0 ]; then
    rm "$filename"
else
    rm ~/Downloads/media/cleaned/"$basename"
fi

