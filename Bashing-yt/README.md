# Youtube-dl Bash

Written by M00kaw@teh-geek.com edited by Jon Nyman

### Description

A bash edited from <https://github.com/M00kaw/Bashing-ytdl> to make downloading with Youtube-dl simpler for the most common options that I use.

### Installation of Youtube-dl

Install ffmpeg from your repository. The script calls `youtube-dl`; use the
[yt-dlp](https://github.com/yt-dlp/yt-dlp) binary installed under that name, since
the original youtube-dl no longer keeps up with YouTube:

`sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp_linux -o /usr/local/bin/youtube-dl && sudo chmod +x /usr/local/bin/youtube-dl`

### Make Bash Global

`sudo install -m 755 ~/r/Bash/Bashing-yt/yt.sh /usr/local/bin/yt`

Re-run after editing `yt.sh` to update the installed copy. Downloads go to `~/Downloads`.

### License

Something about beerware.. yada yada-  buy M00kaw a beer of you feel like it! 
