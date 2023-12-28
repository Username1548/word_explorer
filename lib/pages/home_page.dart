import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:word_explorer/auth.dart';
import 'package:word_explorer/widgets/home_page_widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _signOutButton() {
    return ElevatedButton(
        onPressed: signOut,
        style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(248, 249, 100, 100),
            fixedSize: const Size(103, 0)),
        child: const Text(
          'Sign Out',
          style: TextStyle(color: Colors.white),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'WORD EXPLORER',
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
          actions: [_signOutButton()]),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              user?.email ?? 'How did you get here???',
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
            const StartLearningButton(),
            const ListOfCardsButton(),
            const AddCardButton(),
          ],
        ),
      ),
    );
  }
}
