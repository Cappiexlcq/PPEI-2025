#journal de bord du projet encadré 

##
J'ai crée un compte GitHub. Dans "New repository",j'ai crée un dépôt appelé "PPEI-2025, configuré  
selon vos instructions. Ensuite, j'ai copié le protocole SSH qui me permettra de publier mes 
modifications. 
Sur mon ordinateur, jj'ai ouvert le terminal. 
Sur le terminal, j'ai tapé la commande "git clone" avec l'URL de mon dépôt afin de crée une copie 
locale de mon dépôt git. J'ai effectué la commande "git status" afin de vérifier si mon dossier était
à jour. Mon terminal a affiché "Your branch is up to date with 'origin / main'. nothing to commit,o
working tree clean". 
Sur GitHib, j'ai crée un journal de bord appelé "journal.md" où j'ai écrit "#Journal de bord du 
projet encadré" puis j'ai ajouté ce journal. 
Je suis retournée sur mon terminal pour taper la commande "git log" pour savoir si mon journal 
de bord était ajouté. J'ai ensuite modifié mon journal de bord sur mon ordinateur en ajoutant 
une sous-section commençant par "##" puis j'ai rempli le travail que je venais d'effectuer. 
##
#Mercredi 8 octobre, nous avons exploité les données présentes dans le dossier "archive-49" . Dans le cours précédent, nous avions créé une arborescence des différents documents en dossier : img, docs, ann, txt, qui eux, sont classés par année ou par lieu. 
Avant de commencer ces manipulations, nous avons évoqué les pipelines avec les différentes commandes indispensables pour manipuler des données textuelles (wc, grep, sort, uniq), puis nous avons créer notre premier script en utilisant bash afin de récupérer le nombre de Location par année dans le dossier "ann". 
Pour l'exercice, nous avons installer kate, un éditeur de texte, j'ai personnellement utilisé sublimtext par habitude. J'ai créé mon script : cho "Nombre de lieux en 2016:" 
cat output.txt
cat 2016/* | grep Location | wc -l 
echo "Nombre de lieux en 2017:" 
cat 2017/* | grep Location | wc -l 
echo "Nombre de lieux en 2018:" 
cat 2018/* | grep Location | wc -l
Afin de rendre le script exécutable, j'ai réalisé la commande : chmod +x mon_script.sh 
Puis grâce à Bash, j'ai pu exécuter ce script (.sh) avec la commande bash mon_script.sh > result_compte.txt

##
#Mercredi 15 octobre, nous avons débuté le cours en revoyant les commandes git utiles pour envoyer nos modifications sur github et récupérer des modifications. Nous avons également appris à corriger certaines erreurs et à en éviter, comme ne pas synchroniser nos fichiers. Ensuite, nous avons fait la correction des exercices 1, 2a, 2b, 3, où nous avons pu mettre en pratique nos connaissances en bash. Nous avons appris à utiliser des boucles sur nos scripts. Je dois revoir cette partie du cours. Ces exercices sont utiles pour apprendre à manipuler bash pour l'analyse de texte. En autonomie, nous avons commencé l'exercice 4. 

## 
#Mercredi 22 octobre 
En cours, nous avons utilisé des outils pour récupérer le contenu présent sur une page web via l'URL. Nous devons faire un mini projet pour lundi. Je dois mettre à jour mon exercice bash j'ai oublié de créer un tag. 

##
#Jeudi 24 octobre 
J'ai relu le cours sur les fonctions bash pour commencer mon script. J'ai également fait des recherches sur internet pour mieux comprendre comment former mon script, j'ai consulté le site suivant : https://www.hostinger.com/fr/tutoriels/script-bash. 
J'ai commencé mon script mais je ne sais pas comment faire pour faire des tabulations. J'ai réussi à récupérer le code HTTP et l'encodage. Je regarderai demain pour le reste. Je regarde également sur des forums pour m'aider, https://forum.ubuntu-fr.org/viewtopic.php?id=1697271. 

##
#Lundi 27 octobre 
Je dois rendre et actualiser mon github aujourd'hui. Un ami ingénieur m'a aidé à formuler mon script, à créer des variables pour stocker les résultats et éviter d'avoir trop de lignes dans le script et au final se perdre si il y a des erreurs. Je commence à comprendre le fonctionnement des arguments. 

J'ai oublié de commencer le script présent sur le slide. Je vais le faire maintenant. 
Le script permet de lire un fichier et les lignes contenues dans celui-ci, de vérifier si les lignes sont des URL valide ou non 
L'instruction if permet de recevoir un argument et si on ne rentre pas d'argument le script s'arrête "exit". 
On donne l'argument au script qui est le nom du fichier. Les variables OK et NOK contiendront les lignes valides et les lignes non valides. 
La boucle while permet de vérifier si une confition est vraie, si elle est vraie, on exécute le script. L'argument -r permet de ne pas traiter les \ comme des caractères spéciaux. La variable LINE contient chaque ligne vue. 
L'instruction if permet de savoir si la ligne commence par https ou pas. Si oui, l'URL est valide et va être stocker dans OK. 
Else va stocker les URL non valides dans NOK. 
< $FICHIERS_URLS indique où se trouvent les lignes à lire 
On fini par afficher les URL valides et non valides via echo. 

Pourquoi ne pas utiliser cat ? 

Ajouter cat au script ne servirait à rien car while read -r line lit directement le fichier, l'ajouter alourdirait le script. 

Comment transformer "url/fr.txt" en paramètre script ? 
	a) Valider l'argument : ajouter le code nécessaire pour s'assurer qu'on donne bien un argument au script, sinon on s'arrête 

URLS=$1
if [ $# -eq 0 ]; then
    echo "Pas d'argument"
    exit 1
fi

Comment afficher le numéro de ligne avant chaque URL (sur la même ligne) ?

Dans le script, on utilise une variable compteur qui commence à 1. À chaque tour de la boucle, on affiche sa valeur devant l’URL, puis on l’augmente de 1 avec compteur=$((compteur + 1))
