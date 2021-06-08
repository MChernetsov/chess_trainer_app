import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HistoryPage();
}

class _HistoryPage extends State<HistoryPage> {
  List<Widget> _getHistory() {
    return [
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('31 1, Полуходов - 5, Cила - 10, Победа - Не завершена'),
            IconButton(icon: Icon(Icons.visibility), onPressed: () {})
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
            Text('31 1, Полуходов - 2, Cила - 20, Победа - Не завершена'),
            IconButton(icon: Icon(Icons.visibility), onPressed: () {})
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
            Text('31 1, Полуходов - 10, Cила - 10, Победа - Не завершена'),
            IconButton(icon: Icon(Icons.visibility), onPressed: () {})
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
            Text('31 1, Полуходов - 3, Cила - 1, Победа - Не завершена'),
            IconButton(icon: Icon(Icons.visibility), onPressed: () {})
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('История партий'),
        actions: [
          Container(
            width: 100,
            height: 10,
          ),
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          IconButton(icon: Icon(Icons.add), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Сыграно партий - 4, Выграных - 0, Средняя сила - 9')
            ],
          ),
          ..._getHistory(),
        ],
      ),
    );
  }
}
