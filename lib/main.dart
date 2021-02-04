import 'package:flutter/material.dart';

void main() => runApp(RadioExample());

class RadioExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    const String APP_TITLE = 'Flutter Radio Example';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_TITLE,
      home: HomeRoute(),
    ); // MaterialApp()
  }
}

class HomeRoute extends StatefulWidget {
  @override
  _HomeRoute createState() => _HomeRoute();
}

class _HomeRoute extends State<HomeRoute> {
  //
  String _text = 'Radio A is Selected';
  String _radioGroupValue = 'A';

  void _radioValueChanged(String value) {
    setState(() {
      _radioGroupValue = value;
      switch (_radioGroupValue) {
        case 'A':
          _text = 'Radio A is Selected';
          break;
        case 'B':
          _text = 'Radio B is Selected';
          break;
        case 'X':
          _text = 'Radio X is Selected';
          break;
        case 'Y':
          _text = 'Radio Y is Selected';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.indigo,
                  width: 1.0,
                ), // Border.all()
              ), // BoxDecoration()
              child: Text(
                _text,
                textAlign: TextAlign.center,
              ), // Text()
            ), // Container()
            Row(
              children: <Widget>[
                Radio(
                  value: 'A',
                  groupValue: _radioGroupValue,
                  onChanged: _radioValueChanged,
                ), // Radio()
                Text('A'),
              ], // List<Widget>[]
            ), // Row()
            Row(
              children: <Widget>[
                Radio(
                  value: 'B',
                  groupValue: _radioGroupValue,
                  onChanged: _radioValueChanged,
                ), // Radio()
                Text('B'),
              ], // List<Widget>[]
            ), // Row()
            RadioListTile(
              title: Text('X'),
              subtitle: Text('(RadioListTile)'),
              value: 'X',
              groupValue: _radioGroupValue,
              onChanged: _radioValueChanged,
            ), // RadioListTile()
            RadioListTile(
              title: Text('Y'),
              subtitle: Text('(RadioListTile)'),
              value: 'Y',
              groupValue: _radioGroupValue,
              onChanged: _radioValueChanged,
            ), // RadioListTile()
          ], // List<Widget>[]
        ), // Column()
      ), // SafeArea()
    ); // Scaffold()
  }
}
