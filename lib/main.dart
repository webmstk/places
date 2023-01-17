import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/widgets/sight_details.dart';
// import 'package:places/ui/screen/sight_list_screen.dart';

void main() {
  runApp(const App());
}

/// Приложение "Достопримечательности"
class App extends StatelessWidget {
  /// Конструктор приложения "Достопримечательности"
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Places',
      // home: SightListScreen(),
      home: SightDetails(sight: mocks[4]),
    );
  }
}
