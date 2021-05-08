import 'package:flutter/material.dart';
import 'package:random_character/chinese_character/random_chinese_charater.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'random character',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'random character'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  String _char = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_char',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  _char = RandomCharacter.getChinese(length: 5);
                });
              },
              child: Text('汉字'),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  _char = RandomCharacter.getYijing(length: 5);
                });
              },
              child: Text('易经'),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  _char = RandomCharacter.getEmoji(length: 5);
                });
              },
              child: Text('emoji'),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
