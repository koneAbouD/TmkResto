import 'package:flutter_application_1/user/user.dart';
import 'package:hive_flutter/adapters.dart';

import '../recette/recette.dart';

class RecetteBox {
  static Box<Recette> getRecette() => Hive.box('recette');
  static Box<User> getUser() => Hive.box('user');
}
