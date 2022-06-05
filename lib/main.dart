import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DriftHome(),
    );
  }
}

class DriftHome extends StatefulWidget {
  const DriftHome({Key? key}) : super(key: key);

  @override
  State<DriftHome> createState() => _DriftHomeState();
}

class _DriftHomeState extends State<DriftHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO-DRIFT'),
        backgroundColor: Colors.cyan,
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ここにタイトルを入力',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
              onPressed: () {}, //ワンタッチ処理※これを書かないとエラー
              onLongPress: () {}, //長押し処理
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.notes),
        foregroundColor: Colors.black, //文字色
        backgroundColor: Colors.amber, //背景色
        label: Text('Add ToDo Page'),
        onPressed: () {},
      ),
    );
  }
}
