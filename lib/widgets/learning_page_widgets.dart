import 'dart:math';
import 'package:flutter/material.dart';
import 'package:word_explorer/boxes.dart';

class LearningPageBody extends StatefulWidget {
  const LearningPageBody({super.key});

  @override
  State<LearningPageBody> createState() => _LearningPageBodyState();
}

class _LearningPageBodyState extends State<LearningPageBody> {
  List userCards = boxUserCards.values.toList();
  int index =
      Random().nextInt(boxUserCards.length != 0 ? boxUserCards.length : 1);
  String definition = '***';
  @override
  Widget build(BuildContext context) {
    if (userCards.isEmpty) {
      return const Text('You have learned every singl card!!!');
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {
                setState(() {
                  definition = '${userCards[index].definition}';
                });
              },
              child: Container(
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color.fromARGB(255, 7, 222, 255)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '${userCards[index].concept}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(definition,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ))
                  ],
                ),
              )),
          TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 7, 222, 255),
                fixedSize: const Size(200, 50),
              ),
              onPressed: () {
                setState(() {
                  userCards.removeAt(index);
                  if (userCards.isNotEmpty) {
                    index = Random().nextInt(userCards.length);
                  }
                  definition = '***';
                });
              },
              child: const Text('NEXT')),
          const SizedBox(
            height: 0,
          )
        ],
      );
    }
  }
}
