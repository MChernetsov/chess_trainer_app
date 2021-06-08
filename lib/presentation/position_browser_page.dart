import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class PositionBrowserPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PositionBrowserPage();
}

class _PositionBrowserPage extends State<PositionBrowserPage> {
  List<Widget> _getHistory() {
    return [
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Название - aaaaf, Информация - N/A'),
            IconButton(icon: Icon(Icons.more), onPressed: () {})
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Название - ffffff, Информация - N/A'),
            IconButton(icon: Icon(Icons.more), onPressed: () {})
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Название - fdfd, Информация - N/a'),
            IconButton(icon: Icon(Icons.more), onPressed: () {})
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Название - aaaaaa, Информация - N/A'),
            IconButton(icon: Icon(Icons.more), onPressed: () {})
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Название - Bongcloud attack, Информация - Лучшее начало)'),
            IconButton(icon: Icon(Icons.more), onPressed: () {})
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Название - Лондонская система, Информация - N/a'),
            IconButton(icon: Icon(Icons.more), onPressed: () {})
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Готовые позиции'),
        actions: [
          Container(
            width: 100,
            height: 10,
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          ..._getHistory(),
        ],
      ),
    );
  }
}
