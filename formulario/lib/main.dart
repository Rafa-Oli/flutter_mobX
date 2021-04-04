import 'package:flutter/material.dart';
import 'package:formulario/home.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Controller>(
          create: (_) => Controller(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter MobX',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
