import 'package:hive/hive.dart';
part 'users.g.dart';

//flutter pub run build_runner build

@HiveType(typeId: 0)
class User {
  @HiveField(0)
  int id;
  @HiveField(1)
  String email;
  @HiveField(2)
  String password;
  @HiveField(3)
  String pseudo;

  // ignore: sort_constructors_first, avoid_unused_constructor_parameters
  User(
    this.email,
    this.password,
    this.pseudo
  );


}
