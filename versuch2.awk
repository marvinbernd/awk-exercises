# wir wollen aus der beispieldatei.csv die 2.Spalte ("Score") ausgeben
# gawk -f versuch1.awk -i beispieldatei.csv

# sagt dem Programm das das Trennzeichen "Tab" ist
BEGIN { FS = "\t" }

/[0-9]/ { print $2 }

{ s+=$2; count+=1 } END { print "Durchschnitt: " s/(count-1) }