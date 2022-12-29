import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      // home: MyFirstWidget(title: 'MyFirstWidget'),
      home: MySecondWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  String title;
  int _counter = 0;

  MyFirstWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    _counter++;
    print(_counter);
    print(runtime(context));

    return Container(
      child: Center(
        child: Text('Hello!!'),
      ),
    );
  }

  Type runtime(BuildContext context) {
    return context.runtimeType;
  }
}

class MySecondWidget extends StatefulWidget {
  @override
  State<MySecondWidget> createState() => _MySecondWidgetState();
}

class _MySecondWidgetState extends State<MySecondWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    _incrementCounter();
    print(_counter);
    print(runtime(context));

    return Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Type runtime(BuildContext context) {
    return context.runtimeType;
  }
}
