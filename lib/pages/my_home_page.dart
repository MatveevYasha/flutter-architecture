import 'package:flutter/material.dart';
import 'package:module_busines/module_busines.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool toggle = false;
  int _counter = 0;
  late final MainBloc _mainBloc;

  @override
  void initState() {
    super.initState();
    _mainBloc = BlocFactory().get();
  }

  void _increment() {
    setState(() {
      _mainBloc.incrementService.getStatus(_counter);
      _counter = _mainBloc.incrementService.getStatus(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          '$_counter',
          style: const TextStyle(
            fontSize: 48,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
