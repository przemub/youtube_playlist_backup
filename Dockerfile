FROM debian:sid-slim

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y youtube-dl ffmpeg

COPY ./youtube_playlist_backup /usr/local/bin/
RUN echo "# Netscape HTTP Cookie File" > /etc/cookies.txt
RUN mkdir /downloads

ENTRYPOINT /usr/local/bin/youtube_playlist_backup

