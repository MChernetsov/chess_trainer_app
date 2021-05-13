import 'package:flutter/material.dart';
import 'package:chess_trainer_app/presentation/chess_party_page.dart';

class StartPartyPage extends StatefulWidget {
  @override
  _StartPartyPageState createState() => _StartPartyPageState();
}

class _StartPartyPageState extends State<StartPartyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Создать партию")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const Text('Задайте настройки партии'),
            SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Container>[
                  Container(
                    color: Colors.green,
                    child: new IconButton(
                      icon: const Icon(Icons.settings, color: Colors.white60),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    child: new IconButton(
                      icon: const Icon(Icons.settings, color: Colors.black),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    child: new IconButton(
                      icon: const Icon(Icons.settings, color: Colors.grey),
                      onPressed: () {},
                    ),
                  ),
                ]),
            SizedBox(
              height: 20,
            ),
            Text('Для готовых позиций используйте данное поле'),
            SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                      width: 250,
                      child: TextField(
                          decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Введите позицию',
                      ))),
                  Container(
                    color: Colors.green,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        minimumSize: Size(140, 40),
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                      ),
                      child: Text('Вставить позицию'),
                      onPressed: () {},
                    ),
                  )
                ]),
            SizedBox(
              height: 20,
            ),
            Container(
                color: Colors.green,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(120, 40),
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                  ),
                  child: Text('Играть'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChessPartyPage()));
                  },
                )),
          ],
        ),
      ),
    );
  }
}
