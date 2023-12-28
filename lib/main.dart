import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:word_explorer/boxes.dart';
import 'package:word_explorer/user_card.dart';
import 'package:word_explorer/widget_tree.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Hive.initFlutter();
  Hive.registerAdapter(UserCardAdapter());
  boxUserCards = await Hive.openBox<UserCard>('userCardBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 38, 8, 92)),
        useMaterial3: true,
      ),
      home: const WidgetTree(),
    );
  }
}
