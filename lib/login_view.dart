import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: 400,
            width: 400,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Login',
                  style: TextStyle(fontSize: 32),
                ),
                TextField(),
                TextField(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Entrar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
