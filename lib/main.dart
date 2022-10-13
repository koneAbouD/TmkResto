import 'package:flutter/material.dart';
import 'package:flutter_application_1/recette/recette_list.dart';
import 'package:flutter_application_1/route_generator.dart';
import 'package:flutter_application_1/user/user.dart';
import 'package:flutter_application_1/user/user_list.dart';
import 'package:hive_flutter/adapters.dart';

import '../recette/recette.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(RecetteAdapter());
  Hive.registerAdapter(UserAdapter());
  Box<Recette> boxRecette = await Hive.openBox<Recette>("recette");
  Box<User> boxUser = await Hive.openBox<User>("user");
  var valuesRecette = boxRecette.values;
  var valuesUser = boxUser.values;
  if (valuesRecette.isEmpty) {
    boxRecette.addAll(RecetteList.recettes);
  }
  if (valuesUser.isEmpty) {
    boxUser.addAll(UserList.users);
    // ignore: avoid_print
    print("list users${boxUser.values}");
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
