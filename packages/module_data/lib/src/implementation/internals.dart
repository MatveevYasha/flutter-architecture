import 'package:module_data/src/servises.dart';
import 'package:module_model/src/user/user_data.dart';

class DummyUserService implements UserService {
  @override
  Future<UserData> getDefaultUser() async {
    await Future.delayed(
      const Duration(
        milliseconds: 500,
      ),
    );
    return const UserData(id: 1, name: 'Defaul');
  }

  @override
  Future<UserData> getUserById(int id) async {
    await Future.delayed(
      const Duration(
        milliseconds: 500,
      ),
    );
    return UserData(id: id, name: 'User number is $id');
  }
}
