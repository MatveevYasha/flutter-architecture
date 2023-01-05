import 'package:module_data/src/servises.dart';

class IncrementPlusOne implements IncrementService {
  @override
  int getStatus(number) {
    return number + 1;
  }
}
