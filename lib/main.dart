import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: ColorizeAnimatedTextKit(
                repeatForever: true,
                pause: Duration(milliseconds: 0),
                speed: Duration(milliseconds: 400),
                colors: [
                  Colors.lightBlueAccent,
                  Colors.blue,
                  Colors.greenAccent,
                  Colors.blue,
                  Colors.lightBlueAccent,
                ],
                text: ["바른연애생활"],
                textStyle: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
                textAlign: TextAlign.start,
                alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                ),
          ),
          const SpinKitFadingCube(color: Colors.lightBlueAccent, size: 30,),

        ],
      )),
    );
  }
}
