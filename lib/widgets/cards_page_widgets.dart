import 'package:flutter/material.dart';
import 'package:word_explorer/boxes.dart';
import 'package:word_explorer/user_card.dart';

class ListViewOfCards extends StatefulWidget {
  const ListViewOfCards({super.key});

  @override
  State<ListViewOfCards> createState() => _ListViewOfCardsState();
}

class _ListViewOfCardsState extends State<ListViewOfCards> {
  @override
  Widget build(BuildContext context) {
    if (boxUserCards.length == 0) {
      return const Text('You have 0 card to learn');
    } else {
      return ListView.builder(
          itemCount: boxUserCards.length,
          itemBuilder: (context, index) {
            UserCard userCard = boxUserCards.getAt(index);
            return ListTile(
              leading: IconButton(
                  onPressed: () {
                    setState(() {
                      boxUserCards.deleteAt(index);
                    });
                  },
                  icon: const Icon(Icons.remove)),
              title: Text(userCard.concept),
              subtitle: Text(userCard.definition),
            );
          });
    }
  }
}
