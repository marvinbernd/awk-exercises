# wir wollen aus der beispieldatei.csv alle zeilen, deren Stadt mit E beginnt ausgeben
# gawk -f versuch1.awk -i beispieldatei.csv

/^E/ { print $0 }