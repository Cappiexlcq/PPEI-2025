#!/bin/bash

URLS=$1
compteur=0
SORTIE="sortie.html"

if [ $# -eq 0 ]; then
    echo "Le script attend exactement un argument"
    exit 1
fi

echo "<!DOCTYPE html>" > "$SORTIE"
echo "<html><head><meta charset=\"UTF-8\"><title>Résultats</title></head><body>" >> "$SORTIE"
echo "<table border=\"1\" cellspacing=\"0\" cellpadding=\"5\">" >> "$SORTIE"
echo "<tr><th>ID</th><th>URL</th><th>Code HTTP</th><th>Encodage</th><th>Nombre de mots</th></tr>" >> "$SORTIE"

while read -r line; do
    code_http=$(curl -s -o /dev/null -w "%{http_code}" "$line")
    encodage=$(curl -sI "$line" | grep -i "Content-Type" | sed -n 's/.*charset=\([^ ;]*\).*/\1/p' | tr -d '\r\n')
    if [ -z "$encodage" ]; then
        encodage="inconnu"
    fi
    contenu=$(curl -s "$line")
    nb_mots=$(echo "$contenu" | sed 's/<[^>]*>//g' | wc -w)

   
    echo "<tr><td>${compteur}</td><td>${line}</td><td>${code_http}</td><td>${encodage}</td><td>${nb_mots}</td></tr>" >> "$SORTIE"

    compteur=$((compteur + 1))
done < "$URLS"


echo "</table></body></html>" >> "$SORTIE"

echo "Fichier HTML généré : $SORTIE"
