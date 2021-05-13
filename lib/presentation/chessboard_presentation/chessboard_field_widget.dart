import 'package:flutter/material.dart';

class ChessBoardFieldWidget extends StatefulWidget {
  @override
  _ChessBoardFieldWidget createState() => _ChessBoardFieldWidget();
}

class _ChessBoardFieldWidget extends State<ChessBoardFieldWidget> {
  @override
  final backgroundcolor = Colors.green;
  final figure = Icons.settings;
  final figurevisibility = true;
  final dotvisibility = false;

  Widget build(BuildContext context) {
    return Container(
        width: 30,
        height: 30,
        color: backgroundcolor,
        child: InkWell(
            onTap: () {},
            child: Stack(
              alignment: Alignment.center,
              children: [
                Visibility(
                    visible: figurevisibility,
                    child: Container(child: Icon(figure))),
                Visibility(
                    visible: dotvisibility,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: new BoxDecoration(
                          color: Colors.lightBlue[300], shape: BoxShape.circle),
                    )),
              ],
            )));
  }
}
