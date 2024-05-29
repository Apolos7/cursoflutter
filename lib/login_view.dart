import 'package:cursomms/home/home_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF006EA2),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 400,
            height: 400,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextFormField(
                    controller: loginController,
                    decoration: const InputDecoration(
                      label: Text('Login'),
                    ),
                    validator: validateLogin,
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      label: Text('Password'),
                    ),
                    validator: validatePassword,
                  ),
                  ElevatedButton(
                    onPressed: () => save(context),
                    child: const Text('Entrar'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String? validateLogin(String? value) {
    if (value == null || value.isEmpty) {
      return 'Campo de login não pode estar vazio';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.length <= 5) {
      return 'Senha deve ter pelo menos 6 caracteres';
    }
    return null;
  }

  void save(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    if (!formKey.currentState!.validate()) return;

    // TODO: Realizar requisição para login

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeView(),
      ),
    );
  }
}
