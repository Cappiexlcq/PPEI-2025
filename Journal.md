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