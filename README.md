# iOS-rattrapage-iim
Voici une application iOS réalisé pour le rattrapage du même nom concernant le master IWM IIM A5 2022. 
Il a été réalisé avec Storyboard.

# Introduction
A partir de la dernière version de Xcode (version 14.0 à ce jour), créer une
application iOS destinée à l’iPhone avec les caractéristiques suivantes :
📖 Table des matières
ℹ Informations
 Questions
💻 1.1 Projet
📘  Consignes
☝ Indication
🚀 Rendu
Rattrapage iOS 2
3 tabs (chaque tab doit avoir un icone iOS différent)
Maison : Page d’accueil.
Liste : Page affichant une liste dans laquelle il y a des éléments récupérés
via une API de votre choix (https://pokeapi.co/, https://www.fruityvice.com/
…).
A propos : Page A propos de l’équipe (une image de vous avec du texte)
Sur la page Maison :
Créer un texte dans un UILabel.
Créer un bouton qui permet de modifier la couleur du texte de manière
aléatoire.
Sur la page Liste :
Afficher 5 éléments par défaut
Créer un bouton qui permet au clique d’ajouter un élément.
Donner la possibilité d’éditer un élément.
Vous devoir également pouvoir supprimer un élément de la liste.

# A savoir :
## Main.Storyboard

Ce fichier permet, sous Xcode, de pouvoir visualiser les views de l'application et de pouvoir modifier l'UI de ces dernières.
Par exemple, une *__"Table View"__* ajouter via Storyboard va me permettre d'afficher une liste d'élément récupérer via une API

## ViewController

Ce fichier qui va "controler" l'application. Il permet de gérer l'affichage de la première vue et également de gérer la première fonctionnalité de l'appication, à savoir appliquer une couleur aléatoire sur un élément texte au clique d'un bouton.

## L'API

Il s'agit de l'API : https://api.opendota.com/api/heroStats
C'est une API open data. 
Elle permet de récupérer plusieurs élément concernant des personnages d'un jeu vidéo nommé Dota.

Les données sont récupérer via la fonction *__downloadHero__* dans le fichier *__ListHeroViewController__*

## Les fichiers HeroStats, ListHeroViewController et HeroViewController

Ces 3 fichiers sont chargés de récupérer les données de l'API et d'afficher ces dernières sur la page contenant la liste.

* HeroStats : fichier contienant une *__struct__* permettant de structurer les données que je souhaites récupérer et afficher.
* ListHeroViewController : fichier permettant de faire l'appel à l'API et de gérer l'affichage des éléments dans une *__TableView__* en spécifiant via différentes fonction le nombres de lignes et de colonnes requis.
* HeroViewController: fichier permettant de lier les données via des variables elles mêmes attribuées aux éléments de la liste mis en place via Storyboard. Permet également de récupérer les différentes images.


## Les fonctions: 

* tableView : Ces fonctions permettent l'affichage du nombre de lignes souhaitées, du nombre de colonnes souhaitées, ainsi que d'effectuer l'action *__"ShowDetail"__*  performer par les *__Segues__* mis en place via StoryBoard
* downloadHero : permet de faire un appel à l'API, de récupérer les données et les transformer sous format JSON.
* prepare : permet d'afficher la page Détails via l'action *__"ShowDetail"__* sur le clique correspondant à la ligne voulue.
* viewDidLoad : permet d'afficher la view et de la recharger si les donnnées affichées changent.
* random : permet de charger une couleur aléatoire sur un élément texte au clique d'un bouton.

