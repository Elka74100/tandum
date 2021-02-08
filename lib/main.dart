import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/article.dart';

void main() => runApp(MaterialApp(
  home: Home()
));


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Article> articles = [
    Article(date:'5 min', title:'Surenchère politique autour de la dette Covid', authorLogo:'https://www.lemonde.fr/dist/assets/img/logos/pwa-180.png', author:'lemonde.fr', pertinent:15, notPertinent: 5621, pictureUrl: 'https://img.lemde.fr/2021/02/05/0/394/2209/1474/265/0/75/0/045477e_417003253-dette4.jpg'),
    Article(date: '1 h', title:"Le Foll : « Une candidature unique de la gauche n’est pas faisable »", authorLogo:'https://static.lpnt.fr/static/static-1527175029/favicon-16x16.png', author:'lepoint.fr', pertinent:110015, notPertinent: 0, pictureUrl: 'https://static.lpnt.fr/images/2021/02/06/21310736LPW_21313152_Une___660x287.jpg'),
    Article(date: 'Hier', title:"Sénatoriales : Ségolène Royal tête d’une « liste citoyenne » pour les Français de l’étranger", authorLogo:'https://www.20minutes.fr/favicon.ico', author:'20minutes.fr', pertinent:110015, notPertinent: 0, pictureUrl: 'https://img.20mn.fr/fixXJVzhRGqKcHhynsUlQQ/640x410_segolene-royal-lors-ceremonie-hommage-25e-anniversaire-mort-francois-mitterrand-cimetiere-jarnac.jpg'),
    Article(date: '4 j', title:"Séparatisme: Francois Hollande affirme que la laicité n'est pas contre les musulmans", authorLogo:'https://www.bfmtv.com/favicon.ico', author:'20minutes.fr', pertinent:110015, notPertinent: 0, pictureUrl: 'https://images.bfmtv.com/5H1GuPHf0slxhHcaOYUxX5ECwlg=/0x105:2048x1257/800x0/images/Francois-Hollande-en-novembre-2020-963999.jpg'),
  ];

  Widget ArticleTemplate(article) {
    return Card(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 3),
                      child: Text(
                        '${article.title}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                      child: Row(
                        children: [
                          Image(
                            width: 15,
                            image: NetworkImage('${article.authorLogo}')
                          ),
                          Text(
                            ' ${article.author} - ${article.date}',
                            style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                  ]
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                    child: Image(
                      image: NetworkImage('${article.pictureUrl}'),
                    ),
                  )
                ]
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
            left: 2,
            top: 8,
            right: 8,
            bottom: 0
            ),
            child: Row(
              children: <Widget>[
                Icon(
                Icons.arrow_upward,
                color: Colors.black54
                ),
                Text('${article.pertinent}'),
                Icon(
                Icons.arrow_downward,
                color: Colors.black54
                ),
                Text('${article.notPertinent}'),
                Spacer(),
                Text('122'),
                Text(' Commentaires')
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:  BorderRadius.circular(5),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                        left:10,
                        top:0,
                        right:10,
                        bottom:2
                      ),
                      hintText: 'Votre commentaire...',
                    )
                  )
                )
              )
            ]
          )
        ]
      )
    );
  }

  String profileUrl = 'https://graph.facebook.com/10155928161699746/picture?type=large';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.search
        ),
        title: Text('Tandum'),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    children: articles.map((article) => ArticleTemplate(article)).toList()
                )
            )
          ]
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // onTap: onTabTapped, // new
        // currentIndex: _currentIndex, // new
        type : BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        fixedColor: Colors.yellowAccent,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          new BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.grading),
              label: '',
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.add_circle, size: 37),
              label: '',
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
          ),
          new BottomNavigationBarItem(
                icon: Image(
                    width: 30,
                    image: NetworkImage('$profileUrl')
                ),
              label: ''
          )
        ],
      ),
    );
  }
}