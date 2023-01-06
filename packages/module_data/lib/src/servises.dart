import 'package:module_model/module_model.dart';

// abstract class IncrementService {
//   int getStatus(number);
// }

abstract class UserService {
  Future<UserData> getDefaultUser();
  Future<UserData> getUserById(int id);
}
