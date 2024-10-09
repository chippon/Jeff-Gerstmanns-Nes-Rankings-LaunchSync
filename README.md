# MisterFPGA-Jeff-Gerstmanns-Nes-Rankings-LaunchSync
LaunchSync File for the MisterFpga of Jeff's Nes Rankings

This is generated off the https://8bitnintendo.science/ list (Thank you!) and then converted to a LaunchSync .sync file.

#How To
Download the Jeff_Nes_Ranking.sync file and place it in your /media/fat/ folder on your MisterFpga.
At the Main Mister Menu goto scripts and run launchsync and it should find the new file and search through your libary looking for matches.

#Issues I ran into
Timeout during build of games db at startup of LaunchSync
   -I turned off CIFS to unmount my networked games then loaded a nes set onto my main flash cart
Game [NOT FOUND]
  -Tested on a everdrive set, the sync was unable to find 70 off the 375+ games. Your Milage may vary. 
  -The [NOT FOUND] games will still load into the emulator so you don't have to menu out

#LaunchSync Info
LaunchSync is part of https://github.com/wizzomafizzo/mrext MiSTer Extensions project.
More info at https://github.com/wizzomafizzo/mrext/blob/main/docs/launchsync.md
