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
          flexibleSpace: const Padding(
            padding: EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Text(
              'Список\nинтересных мест',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                fontSize: 32,
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
