import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:studentbankmobile/Debut/Dark/Debut.dart';
import 'package:studentbankmobile/widgets/theme_Provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          int index = 0;
          // final themeProvider = Provider.of<ThemeProvider>(context);
          // List<Widget> widgetOption = <Widget>[
          // HomeScreen(),
          // AccueilLoyer(),
          // ];
          return const MaterialApp(
            title: 'StudentBank',
            debugShowCheckedModeBanner: false,
            home: Debut(),
          );
        },
      );
}
