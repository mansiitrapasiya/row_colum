import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          leading: const Icon(Icons.whatshot, size: 50, color: Colors.green),
          title: const Text("App title"),
          actions: const [Icon(Icons.more_vert_rounded)],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _myColumn(),
            _myrow(),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _increment();
          },
          child: Tooltip(
            message: 'if you press plus button it will increment',
            child: Text(
              '$_count',
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ));
  }

  void _increment() {
    setState(() {
      _count++;
    });
  }

  Widget _myColumn() => Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              color: Colors.amber,
            ),
            Container(
              height: 70,
              width: 70,
              color: Colors.amber,
            ),
            Container(
              height: 70,
              width: 70,
              color: Colors.amber,
            ),
          ],
        ),
      );
  _myrow() => Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 30,
              width: 30,
              color: Colors.amber,
            ),
            Container(
              height: 30,
              width: 30,
              color: Colors.amber,
            ),
            Container(
              height: 30,
              width: 30,
              color: Colors.amber,
            ),
          ],
        ),
      );
}
