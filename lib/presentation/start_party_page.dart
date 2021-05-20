import 'dart:math';
import 'package:flutter/material.dart';
import 'package:chess_trainer_app/presentation/chess_party_page.dart';
import 'package:flutter/services.dart';
import 'package:chess/chess.dart' as chess_logic;

class StartPartyPage extends StatefulWidget {
  @override
  _StartPartyPageState createState() => _StartPartyPageState();
}

class _StartPartyPageState extends State<StartPartyPage> {
  @override
  String fen;
  bool isPlayerWhite = true;
  num computerStrenght = 10;
  Random r = new Random();
  final textFieldController = TextEditingController();
  int whatWidgetIsChecked = 3;
  Icon getIcon(int widgetNumber, Color color) {
    return widgetNumber == whatWidgetIsChecked
        ? Icon(Icons.check_rounded, color: color)
        : Icon(Icons.settings, color: color);
  }

  Widget build(BuildContext context) {
    bool isPlayerWhite = r.nextBool();
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
                    icon: getIcon(1, Colors.white60),
                    onPressed: () {
                      setState(
                        () {
                          isPlayerWhite = true;
                          whatWidgetIsChecked = 1;
                        },
                      );
                    },
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: new IconButton(
                    icon: getIcon(2, Colors.black),
                    onPressed: () {
                      setState(
                        () {
                          isPlayerWhite = false;
                          whatWidgetIsChecked = 2;
                        },
                      );
                    },
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: new IconButton(
                    icon: getIcon(3, Colors.grey),
                    onPressed: () {
                      setState(
                        () {
                          isPlayerWhite = r.nextBool();
                          print(isPlayerWhite.toString());
                          whatWidgetIsChecked = 3;
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text('Уровень игры движка'),
            SizedBox(
              height: 20,
            ),
            Slider(
              value: computerStrenght,
              onChanged: (newStrenght) {
                setState(() => computerStrenght = newStrenght);
              },
              divisions: 20,
              label: "$computerStrenght",
              min: 0,
              max: 20,
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
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Введите позицию',
                    ),
                    controller: textFieldController,
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: Size(140, 40),
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                    ),
                    child: Text('Вставить позицию'),
                    onPressed: () async {
                      ClipboardData data =
                          await Clipboard.getData(Clipboard.kTextPlain);
                      setState(() {
                        textFieldController.text = data.text;
                      });
                    },
                  ),
                )
              ],
            ),
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
                  setState(
                    () {
                      chess_logic.Chess.validate_fen(
                                  textFieldController.text)["valid"] ==
                              true
                          ? fen = textFieldController.text
                          : fen =
                              "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1";
                    },
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChessPartyPage(
                        isPlayerWhite: isPlayerWhite,
                        computerStrenght: computerStrenght,
                        startingPosition: fen,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
