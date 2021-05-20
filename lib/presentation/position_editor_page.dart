import 'package:chess_trainer_app/model/chess_party.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:chess/chess.dart' as chess_logic;
import 'package:flutter_stateless_chessboard/flutter_stateless_chessboard.dart'
    as Cb;

class PositionEditorPage extends StatefulWidget {
  @override
  _PositionEditorPage createState() => _PositionEditorPage();
}

class _PositionEditorPage extends State<PositionEditorPage> {
  bool isWhiteInBottomColor = true;
  bool isWhiteMove = true;
  ChessParty chessParty = chessPartyGenerator('Тестовая партия',
      "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1");
  final chess = new chess_logic.Chess();
  String fen = "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1";
  _changeColor() {
    setState(() {
      isWhiteInBottomColor = !isWhiteInBottomColor;
    });
  }

  _getFen() {
    fen = chessParty.movesList.last;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Редактор партий"),
        actions: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Копировать/'),
                Text('Вставить'),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.copy),
            onPressed: () {
              Clipboard.setData(
                ClipboardData(text: fen),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.paste),
            onPressed: () async {
              ClipboardData data =
                  await Clipboard.getData(Clipboard.kTextPlain);
              setState(
                () {
                  chess_logic.Chess.validate_fen(data.text)['valid'] == true
                      ? fen = data.text
                      : showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: Text("Позиция не верна"),
                            content: Text("Введите корректную позицию FEN"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK'))
                            ],
                          ),
                          barrierDismissible: true,
                        );
                },
              );
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                fen[fen.indexOf(' ') + 1] == 'w'
                    ? Text('Ход белых')
                    : Text('Ход чёрных'),
                Container(
                  color: Colors.green,
                  child: TextButton(
                    child: Row(
                      children: [
                        Icon(
                          Icons.alarm,
                          color: isWhiteInBottomColor == true
                              ? Colors.white
                              : Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Сменить сторону',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    onPressed: () {
                      _changeColor();
                    },
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.ac_unit, color: Colors.white),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Игнорировать правила',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [],
            ),
            Cb.Chessboard(
              size: 300,
              fen: fen,
              onMove: (move) {
                print("move from ${move.from} to ${move.to}");
                print(chess.move(move.from));
              },
              orientation: isWhiteInBottomColor == true
                  ? Cb.Color.WHITE
                  : Cb.Color.BLACK,
            ),
          ],
        ),
      ),
    );
  }
}
