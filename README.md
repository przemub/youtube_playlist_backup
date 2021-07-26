# youtube_playlist_backup

Docker image which keeps backuping your playlist.
It was created so my liked videos playlist copy is updated regularly - no more pain when your favourite channel gets nuked!

## Run

The most readable way to configure `youtube_playlist_backup` is to create a `docker-compose.yml` file as follows:

```docker-compose.yml
services:
  youtube_playlist_backup:
    image: przemub/youtube_playlist_backup
    volumes:
      - (path to downloads):/downloads
      # - (path to cookies.txt):/etc/cookies.txt
      # - (path to archive.txt):/etc/archive.txt
    environment:
      - PLAYLIST_LINK=(link to the playlist)
      # - FORMAT=bestvideo+bestaudio
      # - OUTPUT_TEMPLATE="%(playlist_id)s - %(uploader)s - %(title)s.%(ext)s"
      # - SLEEP_TIME=24h
      # - EXTRA_OPTIONS=
```

In volumes you can set your download path. cookies.txt is necessary when you want to watch a private playlist.
I use [cookies.txt for Firefox](https://addons.mozilla.org/en-GB/firefox/addon/cookies-txt/) to extract it.
archive.txt lists videos which were already downloaded. You can mount it as a volume to have a persistent backup.

You need to set PLAYLIST_LINK variable to the playlist you want to backup.
To change the other options, uncomment another environment variable and change the default value.
