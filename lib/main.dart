import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Listview",
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue[800],
        title: new Text("ListView"),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/html.jpg",
            judul: "HTML",
          ),
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/css.jpg",
            judul: "CSS",
          ),
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/js.jpg",
            judul: "JavaScript",
          ),
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/php.jpg",
            judul: "PHP",
          ),
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/canvas.jpg",
            judul: "Canvas",
          ),
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/boots.jpg",
            judul: "Bootstrap",
          ),
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/jquery.jpg",
            judul: "JQuery",
          ),
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/flutter1.jpg",
            judul: "Flutter",
          ),
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/ci.jpg",
            judul: "Code Igniter",
          ),
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/unity.jpg",
            judul: "Unity",
          ),
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/es6.jpg",
            judul: "Javascript ES6",
          ),
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/react.jpg",
            judul: "React",
          ),
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/ai.jpg",
            judul: "Adobe Illustrator",
          ),
        ],
      ),
    );
  }
}

class ListTutorial extends StatelessWidget {
  ListTutorial({this.gambar, this.judul});
  final String gambar;
  final String judul;
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Center(
        child: new Row(
          children: <Widget>[
            new Image(
              image: new NetworkImage(gambar),
              width: 200.0,
            ),
            new Container(
              child: new Center(
                child: new Column(
                  children: <Widget>[
                    new Text(
                      judul,
                      style: new TextStyle(fontSize: 20.0),
                    ),
                    new Text(
                      "Ini adalah deskripsi tutorial dari [judul] ",
                      style: new TextStyle(
                          fontSize: 10.0, color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
