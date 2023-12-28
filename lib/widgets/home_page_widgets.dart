import 'package:flutter/material.dart';
import 'package:word_explorer/pages/add_cards_page.dart';
import 'package:word_explorer/pages/cards_page.dart';
import 'package:word_explorer/pages/learning_page.dart';

class AddCardButton extends StatelessWidget {
  const AddCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color.fromARGB(255, 7, 222, 255),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddCardPage()),
        );
      },
      child: const Icon(
        Icons.add_circle_outline_sharp,
        size: 40,
        color: Colors.white,
      ),
    );
  }
}

class StartLearningButton extends StatelessWidget {
  const StartLearningButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 7, 222, 255),
        fixedSize: const Size(200, 50),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LearningPage()),
        );
      },
      child: const Text(
        'START',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}

class ListOfCardsButton extends StatelessWidget {
  const ListOfCardsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 7, 222, 255),
          fixedSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CardsPage()),
        );
      },
      child: const Text(
        'SHOW CARDS',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
