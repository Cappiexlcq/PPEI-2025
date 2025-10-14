annee=$1
type=$2

count=$(cat "$annee"/* | grep -c "$type")

echo "Nombre de $type en $annee: $count"

echo "Nombre de $type en $annee: $count" >> exercice_compte_par_type.txt