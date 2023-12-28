import 'package:flutter/material.dart';
import 'package:word_explorer/widgets/add_page_widgets.dart';

class AddCardPage extends StatelessWidget {
  const AddCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('AddCardPage')),
        body: const AddCardForm());
  }
}
