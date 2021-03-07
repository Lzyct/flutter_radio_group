import 'package:flutter/material.dart';
import 'package:flutter_radio_group/flutter_radio_group.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _listHorizontal = ["Horizontal 1", "Horizontal 2", "Horizontal 3"];
  var _listVertical = ["Vertical 1", "Vertical 2", "Vertical 3"];

  var _keyVertical = GlobalKey<FlutterRadioGroupState>();
  var _keyHorizontal = GlobalKey<FlutterRadioGroupState>();

  var _indexHorizontal = 0;
  var _indexVertical = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Vertical -> index selected $_indexVertical - ${_listVertical[_indexVertical]}",
                  style: TextStyle(fontSize: 16),
                ),
                FlutterRadioGroup(
                    key: _keyVertical,
                    titles: _listVertical,
                    defaultSelected: _indexVertical,
                    onChanged: (index) {
                      setState(() {
                        _indexVertical = index;
                      });
                    }),
                FlatButton(
                    color: Colors.cyan,
                    onPressed: () {
                      _keyVertical.currentState.setIndexSelected(2);
                      setState(() {
                        _indexVertical = 2;
                      });
                    },
                    child: Text("Select index 2")),
                Divider(
                  height: 32,
                ),
                Text(
                  "Horizontal -> index selected $_indexHorizontal - ${_listHorizontal[_indexHorizontal]}",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                FlutterRadioGroup(
                    key: _keyHorizontal,
                    titles: _listHorizontal,
                    labelStyle: TextStyle(color: Colors.pink),
                    defaultSelected: _indexHorizontal,
                    label: "Label Horizontal",
                    orientation: RGOrientation.HORIZONTAL,
                    onChanged: (index) {
                      setState(() {
                        _indexHorizontal = index;
                      });
                    }),
                TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber)
                    ),
                    onPressed: () {
                      _keyHorizontal.currentState.setIndexSelected(1);
                      setState(() {
                        _indexHorizontal = 1;
                      });
                    },
                    child: Text("Select index 1")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
