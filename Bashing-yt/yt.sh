#Written by M00kaw@teh-geek.com edited by Jon Nyman
#!/bin/bash

function mp3LQ(){
echo "Feed me the YouTube-Link :D"
read link
sleep 1
youtube-dl -f 17 -t -x --audio-format mp3 --audio-quality 9 $link
exit 0
}

function mp3HQ(){
echo "Feed me the YouTube-Link :D"
read link
sleep 1
youtube-dl -f 17 -t -x --audio-format mp3 --audio-quality 1 $link
exit 0
}

function videoLQ(){
echo "Feed me the link :D "
read link
youtube-dl $link -f 18 -t
exit 0
}

function videoHQ(){
echo "Feed me the link :D "
read link
youtube-dl $link --max-quality "mp4" -t
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

1. Download LQ mp3
2. Download HQ mp3
3. Download video(s) in LQ
4. Download video(s) in HQ
5. quit
6. requirements
!

echo -n " Your choice? : "
read choice

case $choice in
1) mp3LQ ;;
2) mp3HQ ;;
3) videoLQ ;;
4) videoHQ ;;
5) exit ;;
6) req ;;
*) echo "\"$choice\" is not valid"; sleep 2;;
esac
done
