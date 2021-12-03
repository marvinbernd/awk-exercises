# es werden die Tagesrenditen aus GDAXI.csv berechnet
# gawk -f tagesrenditen.awk GDAXI.csv > tr_output.txt


BEGIN { FS = "," }

NR > 2 {
    print $1 ": " ($5-alterWert)/alterWert * 100 "%"
}

NR > 1 {
    alterWert=$5
}