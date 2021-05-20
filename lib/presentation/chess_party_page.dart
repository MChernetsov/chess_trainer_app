import 'package:chess_trainer_app/model/chess_party.dart';
import 'package:flutter/material.dart';
import 'package:chess/chess.dart' as chess_logic;
import 'package:flutter_stateless_chessboard/flutter_stateless_chessboard.dart'
    as Cb;

class ChessPartyPage extends StatefulWidget {
  bool isPlayerWhite;
  int computerStrenght;
  String startingPosition;
  ChessPartyPage({
    this.startingPosition =
        'rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1',
    this.isPlayerWhite = true,
    this.computerStrenght = 10,
  });

  @override
  _ChessPartyPage createState() => _ChessPartyPage();
}

class _ChessPartyPage extends State<ChessPartyPage> {
  final chess = new chess_logic.Chess();

  @override
  Widget build(BuildContext context) {
    ChessParty chessParty = chessPartyGenerator('', widget.startingPosition);
    String fen = chessParty.movesList.last;
    return Scaffold(
      appBar: AppBar(title: Text('Партия')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Cb.Chessboard(
              size: 300,
              fen: fen,
              onMove: (move) {
                print("move from ${move.from} to ${move.to}");
                print(chess.move(move.from));
              },
              orientation: widget.isPlayerWhite == true
                  ? Cb.Color.WHITE
                  : Cb.Color.BLACK,
            ),
          ],
        ),
      ),
    );
  }
}
