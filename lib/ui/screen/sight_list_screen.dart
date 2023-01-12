import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';

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
    final pyramids = mocks[0];
    final deadSea = mocks[1];
    final tibet = mocks[2];
    final baikal = mocks[3];

    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: AppBar(
          flexibleSpace: const Padding(
            padding: EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Text(
              'Список\nинтересных мест',
              style: TextStyle(
                color: Color(0xFF3B3E5B),
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SightCard(pyramids),
              SightCard(deadSea),
              SightCard(tibet),
              SightCard(baikal),
            ],
          ),
        ),
      ),
    );
  }
}
