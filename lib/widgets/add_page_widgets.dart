import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:word_explorer/auth.dart';
import 'package:word_explorer/boxes.dart';
import 'package:word_explorer/user_card.dart';

class AddCardForm extends StatefulWidget {
  const AddCardForm({super.key});

  @override
  State<AddCardForm> createState() => _AddCardFormState();
}

class _AddCardFormState extends State<AddCardForm> {
  final User? user = Auth().currentUser;
  String firstFieldData = '';
  String secondFieldData = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            onChanged: (text) {
              firstFieldData = text;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your word or phrase',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            onChanged: (text) {
              secondFieldData = text;
            },
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter the definition',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 7, 222, 255),
            onPressed: () {
              if (secondFieldData.isNotEmpty && firstFieldData.isNotEmpty) {
                boxUserCards.put(
                    'key_$firstFieldData',
                    UserCard(
                        concept: firstFieldData, definition: secondFieldData));
                Navigator.pop(context);
              }
            },
            child: const Icon(
              Icons.add,
              size: 40,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
