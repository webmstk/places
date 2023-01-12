import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

class SightDetails extends StatelessWidget {
  final Sight sight;

  const SightDetails({super.key, required this.sight});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 14,
      color: Color(0xFF3B3E5B),
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none,
    );
    final textStyleBold = textStyle.copyWith(fontWeight: FontWeight.w700);

    return Expanded(
      child: ColoredBox(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.indigo,
              height: 300,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50, left: 20),
                    width: 30,
                    height: 30,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sight.name,
                    style: textStyleBold.copyWith(
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        sight.type,
                        style: textStyleBold,
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        'закрыто до 09:00',
                        style: textStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Text(
                    sight.details,
                    style: textStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      color: Colors.green,
                      width: double.infinity,
                      height: 50,
                      child: Center(
                        child: Text(
                          'ПОСТРОИТЬ МАРШРУТ',
                          style: textStyleBold.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Divider(),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            color: Colors.green,
                            margin: const EdgeInsets.only(right: 10),
                            width: 25,
                            height: 20,
                          ),
                          Text(
                            'Запланировать',
                            style: textStyle.copyWith(
                              color: const Color.fromRGBO(124, 126, 146, 0.56),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            color: Colors.green,
                            margin: const EdgeInsets.only(right: 10),
                            width: 25,
                            height: 20,
                          ),
                          const Text(
                            'В избранное',
                            style: textStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
