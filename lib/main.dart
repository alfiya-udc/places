import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Places',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MysecondWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Type getContext() {
      print(context.runtimeType);
      return(context.runtimeType);
    }

    getContext(); // StatelessElement

    return Container(
      child: Center(
        child: Text('Hello'),
      ),
    );
  }
}

class MysecondWidget extends StatefulWidget {
  @override
  _MysecondWidgetState createState() => _MysecondWidgetState();
}

class _MysecondWidgetState extends State<MysecondWidget> {
  @override
  Widget build(BuildContext context) {
    Type getContext() {
      print(context.runtimeType);
      return(context.runtimeType);
    }

    getContext(); // StatefulElement

    return Container(
      child: Center(
        child: Text('Hello'),
      ),
    );
  }
}
