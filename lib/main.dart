import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:studentbankmobile/Logement/logement.dart';
// import 'package:studentbankmobile/Logement/Accueil_loyer.dart';
import 'package:studentbankmobile/widgets/theme_Provider.dart';

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
// <<<<<<< HEAD
      // home:PageIntro(),
      home:loyer(),
// =======
      // home:deuxieme(),
// >>>>>>> 95ed056 (accueil_mobilite termine et accueil_mobilite_dark + commencement partie visa)
    );
    },
    );
}
