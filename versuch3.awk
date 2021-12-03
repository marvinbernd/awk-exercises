# wir wollen aus der beispieldatei.csv "Score" ausgeben,
# unabhängig in welcher Spalte er steht
# gawk -f versuch3.awk beispieldatei.csv

# sagt dem Programm das das Trennzeichen "Tab" ist
BEGIN { FS = "\t" }

# NR : implizierter Zähler (Number of records (Zeilennummer))
# NF : Number of fields
NR == 1 { 
    for (i = 1; i <= NF; i++) {
        if ($i == "Score") {
            scorePos = i
        }
    }
}

NR > 1 { 
    print $1 ": " $scorePos
    s+=$scorePos;

    if (NR == 2) max=$scorePos
    if (NR > 2 && $scorePos > max) max=$scorePos

    if (NR == 2) min=$scorePos
    if (NR > 2 && $scorePos < min) min=$scorePos
}

END { 
    print "--------------"
    print "Durchschnitt: " s/(NR-1)
    print "Max: " max
    print "Min: " min
}