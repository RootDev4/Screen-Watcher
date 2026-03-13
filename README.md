# Screen Watcher
Simple script for Mac OS X to detect changes on screen and take a screenshot.

## How does it work?
The script takes a screenshot of the specified area and compares its hash with the hash of the previous screenshot. If a change is detected, an image of the change is saved.

## Download
Download screen_watcher.sh

## Config
Adjust settings.
```bash
INTERVAL=0.5          # Checking interval in seconds
REGION="0,0,600,300"  # Area to be monitored (start x, start y, end x, end y)
```
Keep `REGION` as small as possible to avoid big images. 

## Run
Run `chmod +x screen_watcher.sh` to make the file executable.
Run `./screen_watcher.sh` to start the script.
