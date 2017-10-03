# filename_timestamping.sh
Change the date modified on files using a time stamp that is already part of the filename.

This file will also add +5minutes to file modified so creation and modified date are different.

Why is this important?

If you are changing a file that was growing over a period of time which you roughly know, you might want to change its final modified time stamp so its not the same as creation date.

An example is a large .log file you want to change back its modified/creation time stamps.

I have commented out a few line in script that was playing with, use to your own liking, but I would advise backing up your data before attempting this.
