import 'package:flutter/material.dart';
import 'package:chess_trainer_app/presentation/Chessboard_presentation/chessboard_field_widget.dart';
import 'package:chess_trainer_app/presentation/Chessboard_presentation/chessboard_widget.dart';

class PositionEditorPage extends StatefulWidget {
  @override
  _PositionEditorPage createState() => _PositionEditorPage();
}

class _PositionEditorPage extends State<PositionEditorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Создать партию")),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[ChessBoardWidget()])));
  }
}
