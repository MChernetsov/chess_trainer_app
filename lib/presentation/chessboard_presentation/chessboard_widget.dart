import 'package:chess_trainer_app/domain/generate_party.dart';
import 'package:chess_trainer_app/model/chess_position.dart';
import 'package:flutter/material.dart';

class ChessBoardWidget extends StatefulWidget {
  @override
  _ChessBoardWidget createState() => _ChessBoardWidget();
}

class _ChessBoardWidget extends State<ChessBoardWidget> {
  @override
  Widget build(BuildContext context) {
    List<List<dynamic>> chessboard = GenerateParty(true).chessBoard.last;
    return Container(
        width: 300,
        height: 300,
        child: Table(
          children: chessboard
              .map(
                (row) =>
                    TableRow(children: row.map((cell) => Text(cell)).toList()),
              ) //почитать про iterable.
              .toList(),
        ));
  }
}
