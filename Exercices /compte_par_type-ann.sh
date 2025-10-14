type=$1
annees=("2016" "2017" "2018")

chmod +x compte_par_type.sh

for annee in "${annees[@]}"; do
	./compte_par_type.sh "$annee" "$type"
done

echo "Done"
