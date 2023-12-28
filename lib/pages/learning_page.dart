import 'package:flutter/material.dart';
import 'package:word_explorer/widgets/learning_page_widgets.dart';

class LearningPage extends StatelessWidget {
  const LearningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LearningPage'),
      ),
      body: const LearningPageBody()
    );
  }
}