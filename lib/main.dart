import 'package:flutter/material.dart';
import 'package:flutter_gravatar/flutter_gravatar.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var _url = 'https://rubjo.github.io/victor-mono/';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  backgroundImage: NetworkImage(
                      Gravatar('github-bio@thehelblings.com').imageUrl()),
                  radius: 50.0,
                  backgroundColor: Colors.red),
              Text(
                '>=Adam V. Helbling<=',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'VictorMono'),
              ),
              Text('WANNABE JEDI - i.e SW ENGINEER',
                  style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2.5,
                      color: Colors.teal.shade50,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SourceSansPro')),
              SizedBox(
                  width: 200,
                  height: 20,
                  child: Divider(color: Colors.teal.shade50)),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: ListTile(
                      leading: Icon(Icons.phone, color: Colors.teal),
                      title: Text(
                        '+ 603 685 4161',
                        style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'SourceSansPro',
                            fontSize: 20.0),
                      )),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ListTile(
                      leading: Icon(Icons.email, color: Colors.teal),
                      title: Text(
                        'github-bio@thehelblings.com',
                        style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'SourceSansPro',
                            fontSize: 20.0),
                      ),
                    )),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                  onPressed: _launchFontUrl,
                  child: Text(
                    'Font Credit: Victor Mono',
                    style: TextStyle(
                        color: Colors.teal.shade50,
                        fontStyle: FontStyle.italic,
                        fontSize: 10.0,
                        fontFamily: 'VictorMono'),
                  )),
            ],
          )),
        ),
      ),
    );
  }

  void _launchFontUrl() async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
}
