ANNEE=$1
TYPE=$2
TOPN=$3

cat $ANNEE/$ANNEE_$MOTS_*.ann | grep Location | cut -f3 | sort | uniq -c | sort -n | tail -n $TOPN