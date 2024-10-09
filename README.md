# Jeff Gerstmanns Nes Rankings LaunchSync for MiSTerFPGA
LaunchSync File for the MisterFpga of Jeff's Nes Rankings

This is generated off the https://8bitnintendo.science/ list (Thank you!) and then converted to a LaunchSync .sync file

# How To
* 1- Download the Jeff_Nes_Ranking.sync file and place it in your /media/fat/ folder on your MisterFpga
* 2- At the Main Mister Menu -> scripts -> run launchsync
* 3- The script should find the new sync file and search your games looking for matches

# Issues I ran into
Timeout during build of games db at startup of LaunchSync
* I turned off CIFS to unmount my networked games then loaded a nes set onto my main flash cart
   
Games with [NOT FOUND] in the name
* Tested on a everdrive set, the sync was unable to find 70 off the 375+ games. Your Milage may vary. 
* The [NOT FOUND] games will still load into the emulator so you don't have to menu out

# LaunchSync Info
LaunchSync is part of https://github.com/wizzomafizzo/mrext MiSTer Extensions project.

More info at https://github.com/wizzomafizzo/mrext/blob/main/docs/launchsync.md
