import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({super.key});

  @override
  State<SightListScreen> createState() {
    return _SightListScreenState();
  }
}

class _SightListScreenState extends State<SightListScreen> {
  final _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: AppBar(
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
            child: RichText(
              text: const TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                ),
                children: [
                  TextSpan(text: 'С', style: TextStyle(color: Colors.green)),
                  TextSpan(text: 'писок\n'),
                  TextSpan(text: 'и', style: TextStyle(color: Colors.yellow)),
                  TextSpan(text: 'нтересных мест'),
                ],
              ),
            ),
          ),
          backgroundColor: _backgroundColor,
          elevation: 0,
        ),
      ),
      backgroundColor: _backgroundColor,
    );
  }
}
