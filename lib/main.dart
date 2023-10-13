// @dart=2.9
import 'package:flutter/material.dart';
import 'package:loteria/src/home_page.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
    
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Splash Screen Flutter'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({key, this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return _introScreen();
  }
}

Widget _introScreen() {
  return Stack(
    children: <Widget>[
      SplashScreen(
        seconds: 3,
        gradientBackground: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color.fromARGB(255, 245, 233, 3), Color(0xffF5F5F5)],
        ),
        navigateAfterSeconds: Home(),
        loaderColor: Colors.green,
      ),
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/trevo1.png"),
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    ],
  );
}
