import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? errorMassege = '';
  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInwithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMassege = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAngPassword() async {
    try {
      await Auth().createUserWithEmailAngPassword(
        email: _controllerEmail.text,
        password: _controllPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMassege = e.message;
      });
    }
  }

  Widget _title() {
    return const Text('Auth');
  }

  Widget _entryField(
    String title,
    TextEditingController controller,
  ) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: title,
      ),
    );
  }

  Widget _errorMassege() {
    return Text(errorMassege == '' ? '' : 'Humm? $errorMassege');
  }

  Widget _subbmitButton() {
    return ElevatedButton(
      onPressed:
          isLogin ? signInWithEmailAndPassword : createUserWithEmailAngPassword,
      child: Text(isLogin ? 'Login' : 'Register'),
    );
  }

  Widget _loginOrRegisterButton() {
    return TextButton(
        onPressed: () {
          setState(() {
            isLogin = !isLogin;
          });
        },
        child: Text(isLogin ? 'Register instead' : 'Login Instead'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
        _entryField('email', _controllerEmail),
        _entryField('password', _controllPassword),
        _errorMassege(),
        _subbmitButton(),
        _loginOrRegisterButton()
          ],

        ),

      ),
    );
  }
}
