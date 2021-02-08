import 'package:flutter_app/pages/home/models/article.dart';
import 'package:flutter_app/pages/home/models/comment.dart';

class Articles {

  List<Article> articles = [
    Article(
        id: '01',
        date:'5 min',
        title:'Surenchère politique autour de la dette Covid',
        authorLogo:'https://www.lemonde.fr/dist/assets/img/logos/pwa-180.png',
        author:'lemonde.fr',
        pertinent:15,
        notPertinent: 5621,
        pictureUrl: 'https://img.lemde.fr/2021/02/05/0/394/2209/1474/265/0/75/0/045477e_417003253-dette4.jpg',
        comments: [
          Comment(
            date: '4 min',
            userProfilePictureUrl: 'http://thenewcode.com/assets/images/thumbnails/sarah-parmenter.jpeg',
            userName: 'Aziza Ouni',
            content: 'Le covid existe même pas de toute facon',
            pertinent: 5,
            notPertinent: 0,
          ),
          Comment(
            date: '4 min',
            userProfilePictureUrl: 'https://ressources.mynoors.com/files/pages/original/2019/08/18/ours-marron-clair-12775-1034.jpg',
            userName: 'Douni Doums',
            content: "Que racontes tu maman?",
            pertinent: 5,
            notPertinent: 0,
          ),

        ]
    ),
    Article(
        id: '02',
        date: '1 h',
        title:"Le Foll : « Une candidature unique de la gauche n’est pas faisable »",
        authorLogo:'https://static.lpnt.fr/static/static-1527175029/favicon-16x16.png',
        author:'lepoint.fr',
        pertinent:110015,
        notPertinent: 0,
        pictureUrl: 'https://static.lpnt.fr/images/2021/02/06/21310736LPW_21313152_Une___660x287.jpg',
        comments: [
          Comment(
            date: '4 min',
            userProfilePictureUrl: 'http://thenewcode.com/assets/images/thumbnails/sarah-parmenter.jpeg',
            userName: 'Aziza Ouni',
            content: 'Le covid existe même pas de toute facon',
            pertinent: 5,
            notPertinent: 0,
          )
        ]
    ),
    Article(
        id: '03',
        date: 'Hier',
        title:"Sénatoriales : Ségolène Royal tête d’une « liste citoyenne » pour les Français de l’étranger",
        authorLogo:'https://www.20minutes.fr/favicon.ico',
        author:'20minutes.fr',
        pertinent:110015,
        notPertinent: 0,
        pictureUrl: 'https://img.20mn.fr/fixXJVzhRGqKcHhynsUlQQ/640x410_segolene-royal-lors-ceremonie-hommage-25e-anniversaire-mort-francois-mitterrand-cimetiere-jarnac.jpg',
        comments: [
          Comment(
            date: '4 min',
            userProfilePictureUrl: 'http://thenewcode.com/assets/images/thumbnails/sarah-parmenter.jpeg',
            userName: 'Aziza Ouni',
            content: 'Le covid existe même pas de toute facon',
            pertinent: 5,
            notPertinent: 0,
          )
        ]
    ),
    Article(
        id: '04',
        date: '4 j',
        title:"Séparatisme: Francois Hollande affirme que la laicité n'est pas contre les musulmans",
        authorLogo:'https://www.bfmtv.com/favicon.ico',
        author:'20minutes.fr',
        pertinent:110015,
        notPertinent: 0,
        pictureUrl: 'https://images.bfmtv.com/5H1GuPHf0slxhHcaOYUxX5ECwlg=/0x105:2048x1257/800x0/images/Francois-Hollande-en-novembre-2020-963999.jpg',
        comments: [
          Comment(
            date: '4 min',
            userProfilePictureUrl: 'http://thenewcode.com/assets/images/thumbnails/sarah-parmenter.jpeg',
            userName: 'Aziza Ouni',
            content: 'Le covid existe même pas de toute facon',
            pertinent: 5,
            notPertinent: 0,
          )
        ]
    )
  ];

  Articles({this.articles});

}


