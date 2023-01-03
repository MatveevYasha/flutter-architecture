import 'package:flutter/material.dart';
import 'package:flutter_application_1/businnes/bloc_factory.dart';
import 'package:flutter_application_1/businnes/main_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool toggle = false;
  int _counter = 0;
  // late final MainBloc _mainBloc;

  @override
  void initState() {
    super.initState();
    // _mainBloc = BlocFactory().get();
    // _mainBloc.add(_counter);
  }

  // void _switchToggle() {
  //   setState(() {
  //     _mainBloc.add(_counter);
  //     toggle = !toggle;
  //   });
  // }

  void _increment() {
    setState(() {
      // _mainBloc.dumnyService.getStatus(_counter);
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
        // Container(
        //   height: toggle ? 100 : 200,
        //   width: toggle ? 200 : 100,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(20),
        //     color: toggle ? Colors.amber : Colors.black,
        //   ),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
