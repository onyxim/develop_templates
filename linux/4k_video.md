# How to play 4k video on linux?

## requirements for video file

1. It should be encoded with supported codecs. Check what's supported with `vainfo`.
1. To view 4k video only good solution for now is `mpv player`. Use command `mpv --hwdec=vaapi <video_file>`.  
link for more info https://wiki.archlinux.org/index.php/Mpv#Hardware_video_acceleration
1. `VLC` supported hardware decode, but works poorly with 10bit color. Films looks faded.