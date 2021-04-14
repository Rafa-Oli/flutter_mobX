import 'package:flutter/material.dart';
import 'package:formulario/home.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it/get_it.dart';

import 'controller.dart';

void main() {
  GetIt getIt = GetIt.asNewInstance();
  getIt.registerSingleton<Controller>(Controller());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MobX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
