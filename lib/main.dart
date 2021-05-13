import 'package:flutter/material.dart';
import 'presentation/start_party_page.Dart';
import 'presentation/personal_history_page.dart';
import 'presentation/position_browser_page.dart';
import 'presentation/position_editor_page.dart';
import 'presentation/settings_menu_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme:
            ThemeData(primarySwatch: Colors.green, primaryColor: Colors.green),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  final ButtonStyle mainMenuButtonStyle = TextButton.styleFrom(
    backgroundColor: Colors.green,
    padding: EdgeInsets.all(8.0),
    minimumSize: Size(200, 40),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Шахматный тренажер"), actions: <Widget>[
        IconButton(
            icon: const Icon(Icons.settings),
            padding: const EdgeInsets.only(right: 20),
            onPressed: () {})
      ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: mainMenuButtonStyle,
              child: Text('Создать партию'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StartPartyPage()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: mainMenuButtonStyle,
              child: Text('Редактор партий'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PositionEditorPage()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: mainMenuButtonStyle,
              child: Text('История партий'),
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: mainMenuButtonStyle,
              child: Text('Готовые позиции'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
