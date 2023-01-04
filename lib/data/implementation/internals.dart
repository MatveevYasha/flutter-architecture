import 'package:flutter_application_1/data/servises.dart';

class IncrementPlusOne implements IncrementService {
  @override
  int getStatus(number) {
    return number + 1;
  }
}
