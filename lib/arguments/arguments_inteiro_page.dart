import 'package:flutter/material.dart';

class ArgumentsInteiroPage extends StatelessWidget {
  const ArgumentsInteiroPage({super.key});

  @override
  Widget build(BuildContext context) {
    int numero;

    numero = ModalRoute.of(context)?.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Arguments Inteiro'),
      ),
      body: Center(
        child: SizedBox(
          child: Text(
            ' O numero repassado é $numero',
          ),
        ),
      ),
    );
  }
}
