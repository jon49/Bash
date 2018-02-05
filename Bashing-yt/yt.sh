#Written by M00kaw@teh-geek.com edited by Jon Nyman
#!/bin/bash

function getLink(){
mkdir -p ~/Downloads/media/keep
mkdir -p ~/Downloads/media/cleaned
cd ~/Downloads/media
echo "Feed me the YouTube-Link :D"
read links
sleep 1
return links
}

title='-o %(title)s-%(id)s.%(ext)s'

function YTmp3LQ(){
    getLink
    set -f
    array=(${links// / })
    for link in "${array[@]}"
    do
        youtube-dl -f 17 $title -x --audio-format mp3 --audio-quality 9 $link &
    done
    wait
    cleanAudio
    exit 0
}

function YTmp3HQ(){
    cd keep
    getLink
    set -f
    array=(${links// / })
    for link in "${array[@]}"
    do
        youtube-dl -f 17 $title -x --audio-format mp3 --audio-quality 1 $link &
    done
    exit 0
}

function YTHQ(){
    cd keep
    getLink
    set -f
    array=(${links// / })
    for link in "${array[@]}"
    do
        youtube-dl -f 22 $title $link &
    done
    exit 0
}

function cleanAudio(){
    clean-media
    find ~/Downloads/media -maxdepth 1 -iname "*.mp3" |
        sed 's|.|\\&|g' |
        xargs -Ifoo ~/Bash/clean-audio.sh "foo"
}

function SoundcloudHQMP3(){
    cd keep
    getLink
    set -f
    array=(${links// / })
    for link in "${array[@]}"
    do
        youtube-dl -f http_mpe_128_url -x --audio-format mp3 --audio-quality 1 $title $link &
    done
    exit 0
}

function FacebookHQ(){
    cd keep
    getLink
    set -f
    array=(${links// / })
    for link in "${array[@]}"
    do
        youtube-dl -f dash_sd_src_no_ratelimit $title $link &
    done
    exit 0
}

function req(){
cat << !


You need to have youtube-dl installed. 
It requires Python http://python.org 
(native in most linux / unix and Mac OSX)
 
Download youtube-dl from your package-manager or 
http://rg3.github.com/youtube-dl/download.html

In order to download MP3-files, you need to have 
ffmpeg installed. 
Install it with your package-manager or 
http://www.ffmpegx.com/download.html


!
}

while : #loop
do
cat << !
R U N M E N U

1. LQ YT mp3
2. HQ YT mp3
3. HQ YT
4. HQ MP3 Soundcloud
5. HQ Facebook
!

echo -n " Your choice? : "
read choice

case $choice in
1) YTmp3LQ && cleanAudio;;
2) YTmp3HQ ;;
3) YTHQ ;;
4) SoundcloudHQMP3 ;;
5) FacebookHQ ;;
6) req ;;
*) echo "\"$choice\" is not valid"; sleep 2;;
esac
done

