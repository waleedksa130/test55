import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:project/applocal/applocal.dart';
import 'package:project/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: MyHomePage(),
      localizationsDelegates: const[
        AppLocale.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const[
        Locale("ar",""),
        Locale("en","")
      ],
      localeResolutionCallback: (curentLang,supportLang){
        if(curentLang!=null){
          for(Locale locale in supportLang){
            if(locale.languageCode==curentLang.languageCode){
              return curentLang;
            }
          }
        }
        return supportLang.first;
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState(){
    super.initState();
    startSplashScreenTimer();
  }
  startSplashScreenTimer()async{
    var _duration = const Duration(seconds: 3);
    return Timer(_duration,navigtionToNextPage);
  }
  void navigtionToNextPage()async{
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomePage()
    ), (Route<dynamic>route)=>false);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("${getLang(context, "titaal_spash")}"),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              "${getLang(context,"text")}"
            ),
            Center(
              child: Image.asset("assets/image/splashs.png"),
            )

          ],
        ),
      ),

    );
  }
}
