import 'package:hive/hive.dart';
part 'user.g.dart';

@HiveType(typeId: 1)
class User extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? login;
  @HiveField(2)
  String? email;
  @HiveField(3)
  String? password;

  User({
    this.id,
    this.login,
    this.email,
    this.password,
  });
  User copyWith({
    int? id,
    String? login,
    String? email,
    String? password,
  }) {
    return User(
      id: id ?? this.id,
      login: login ?? this.login,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  String toString() {
    return '{id: $id, login: $login, email: $email, password: $password}';
  }
}
