import 'package:flutter/material.dart';
import 'package:flutter_passando_arguments_example/app/model/cliente.dart';

class ArgumentsClasse extends StatefulWidget {
  const ArgumentsClasse({super.key});

  @override
  State<ArgumentsClasse> createState() => _ArgumentsClasseState();
}

class _ArgumentsClasseState extends State<ArgumentsClasse> {
  String? nome;
  String? profissao;
  String? email;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final cliente = ModalRoute.of(context)?.settings.arguments as Cliente;

      setState(() {
        nome = cliente.nome;
        profissao = cliente.profissao;
        email = cliente.email;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Classe Page'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Cliente com Nome: $nome'),
            Text('Cliente com Profissao: $profissao'),
            Text('Cliente com Email: $email'),
          ],
        ),
      )),
    );
  }
}
