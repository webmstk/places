import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_list_screen.dart';

void main() {
  runApp(const App());
}

/// Приложение "Достопримечательности"
class App extends StatelessWidget {
  /// Конструктор приложения "Достопримечательности"
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Places',
      home: SightListScreen(),
    );
  }
}
