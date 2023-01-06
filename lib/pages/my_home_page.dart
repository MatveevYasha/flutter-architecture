import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:module_busines/module_busines.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final MainBloc _mainBloc;

  @override
  void initState() {
    super.initState();

    _mainBloc = GetIt.I.get<MainBloc>();
    _mainBloc.add(const MainBlocEvent.init());
  }

  @override
  Widget build(BuildContext context) {
    return Provider<MainBloc>(
      create: (_) => _mainBloc,
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const MyHomePage(title: 'Flutter Clean Architecture'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MainBlocState>(
      stream: context.read<MainBloc>().state,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final state = snapshot.data;
          return state!.map<Widget>(
            loading: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('Init'),
              ),
              body: const Center(
                child: Text('Initializing'),
              ),
            ),
            loaded: (state) => Scaffold(
              appBar: AppBar(
                title: const Text('Loaded'),
              ),
              body: Center(
                child: Text(state.userData.name),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  context.read<MainBloc>().add(
                      MainBlocEvent.setUser(userId: state.userData.id + 1));
                },
                child: const Icon(Icons.add),
              ),
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
