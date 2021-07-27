FROM python:3.9-alpine

RUN apk add --no-cache python3 curl bash ffmpeg
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp && chmod a+rx /usr/local/bin/yt-dlp

COPY ./youtube_playlist_backup /usr/local/bin/
RUN echo "# Netscape HTTP Cookie File" > /etc/cookies.txt
RUN mkdir /downloads

ENTRYPOINT /usr/local/bin/youtube_playlist_backup

