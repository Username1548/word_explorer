import 'package:flutter/material.dart';
import 'package:word_explorer/widgets/cards_page_widgets.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LearningPage'),
      ),
      body: const ListViewOfCards()
    );
  }
}