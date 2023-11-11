import 'package:flutter/material.dart';
import 'package:roll_dice/roll_dice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const RollDice(),
      /* Scaffold(
        body: Container(
            /*  decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.amber,
                Colors.green,
                Colors.blueAccent,
                Colors.indigoAccent
              ],
            )),*/
            child:  Center(
              child: Text(
                'Welcome to Flutter again Rehab',
                style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold,
                /*shadows:[
                  Shadow(
                    color: Colors.red,
                    blurRadius: 1,
                    offset: Offset(5.0, 10.0),
                  )
                ]*/
                  decoration: TextDecoration.combine([
                    TextDecoration.underline,
                    TextDecoration.overline
                  ]),
                  decorationColor: Colors.red,
                  decorationThickness: 1,
                  decorationStyle: TextDecorationStyle.wavy

                ),
              ),
            )),
        backgroundColor: Colors.blue[100],
      )*/
    );
  }
}
