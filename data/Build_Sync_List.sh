#!/bin/bash
inputfile='The_Science.txt'
outputfile='Jeff_Nes_Ranking.sync'
fixfile='fixfile.txt'
datenow=$(date "+%Y-%m-%d %R")
i=1
printf "" > $outputfile
#get the current list
wget https://raw.githubusercontent.com/vNakamura/8bitnintendo-science/refs/heads/main/_data/list.csv
#cut to just names
cut -d ',' -f1 list.csv > The_Science.txt
rm list.csv
#Remove First Line (game)
sed -i '1d' The_Science.txt
#remove The from the front of names
sed -i 's/^The //g' The_Science.txt
#Header
printf "name = The Science - Jeff Gerstmann's Nes Ranking\n" >> $outputfile
printf "author = chippon\n" >> $outputfile
printf "url = https://raw.githubusercontent.com/chippon/MisterFPGA-Jeff-Gerstmanns-Nes-Rankings-LaunchSync/refs/heads/main/Jeff_Nes_Ranking.sync\n" >> $outputfile
printf "updated = $datenow \n\n" >> $outputfile

#Start Loop to read The_Science.txt and write output Jeff_Nes_Ranking.sync file
while read line; do
	number=$(printf '%03d\n' "$i")
	printf "[$number - $line]\n" >> $outputfile
	printf "system = NES\n" >> $outputfile
	printf "match = $line (USA)\n" >> $outputfile
	printf "match = $line\n" >> $outputfile
	printf "\n" >> $outputfile
	i=$((i+1))
done < $inputfile
