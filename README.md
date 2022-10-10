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

Ce fichier permet, sous Xcode, de pouvoir visualiser le storyboard de l'application et de pouvoir modifier l'UI de cette dernière.
Par exemple, une "table view" ajouter via Storyboard va me permettre d'afficher une liste d'élément récupérer via une API

## ViewController

Ce fichier qui va "controler" l'application. Il permet de gérer l'affichage de la première vue et également de gérer la première fonctionnalité de l'appication, à savoir appliquer une couleur aléatoire sur un élément texte au clique d'un bouton.

## L'API

Il s'agit de l'API : https://api.opendota.com/api/heroStats
C'est une API open data. 
Elle permet de récupérer plusieurs élément concernant des personnages d'un jeu vidéo nommé Dota.

Les données sont récupérer via la fonction _downloadHero_ dans le fichier _ListHeroViexw_
