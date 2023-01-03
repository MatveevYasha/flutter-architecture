import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool toggle = false;

  void _switchToggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          height: toggle ? 100 : 200,
          width: toggle ? 200 : 100,
          color: toggle ? Colors.amber : Colors.black,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _switchToggle,
        child: const Icon(Icons.swap_horiz),
      ),
    );
  }
}
