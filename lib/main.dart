import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:studentbankmobile/Logement/deuxieme.dart';
// import 'package:studentbankmobile/Logement/Accueil_loyer.dart';
import 'package:studentbankmobile/widgets/theme_Provider.dart';

import 'Logement/premier.dart';
import 'Sp_coder/connexion/page_intro.dart';
import 'Sp_coder/provider/user_provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override

   Widget build(BuildContext context)=>ChangeNotifierProvider(
    create: (context)=>ThemeProvider(),
    builder: (context,_){
      int index=0;
      final themeProvider=Provider.of<ThemeProvider>(context);
      List <Widget>widgetOption=<Widget>[
        // HomeScreen(),
        // AccueilLoyer(),
      ];
      return MaterialApp(
        title: 'StudentBank',
        debugShowCheckedModeBanner: false,
        // themeMode:themeProvider.themeMode,
        // theme: MyThemes.lightTheme,
        // darkTheme: MyThemes.darkTheme,
      home:premier(),
    );
    },
    );
}
