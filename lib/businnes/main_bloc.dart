import 'dart:async';

import 'package:flutter_application_1/data/servises.dart';

class MainBloc {
  final IncrementService incrementService;
  final StreamController<int> _eventsController = StreamController();

  MainBloc({
    required this.incrementService,
  });

  void add(int event) {
    if (_eventsController.isClosed) return;
    _eventsController.add(event);
  }

  void dispose() {
    _eventsController.close();
  }
}
