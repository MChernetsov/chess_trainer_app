import 'package:flutter/material.dart';
import 'package:chess_trainer_app/presentation/Chessboard_presentation/chessboard_field_widget.dart';

class ChessPartyPage extends StatefulWidget {
  @override
  _ChessPartyPage createState() => _ChessPartyPage();
}

class _ChessPartyPage extends State<ChessPartyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Партия')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(child: Text('Информация об оппоненте')),
          //Container(child: ChessBoardWidget())
        ],
      )),
    );
  }
}
