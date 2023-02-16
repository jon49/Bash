
function ,yl3 {
    for i in "$@"; do
        youtube-dl -o ~/Downloads/%\(title\)s-%\(id\)s.%\(ext\)s --extract-audio --audio-format mp3 --audio-quality 9 $i &
    done
}

