import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_details.dart';
// import 'package:places/ui/screen/sight_list_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final pyramids = mocks.first;

    return MaterialApp(
      title: 'Places',
      // home: SightListScreen(),
      home: SightDetails(sight: pyramids),
    );
  }
}
