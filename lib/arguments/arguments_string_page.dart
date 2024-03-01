import 'package:flutter/material.dart';

class ArgumentsStringPage extends StatefulWidget {
  const ArgumentsStringPage({super.key});

  @override
  State<ArgumentsStringPage> createState() => _ArgumentsStringPageState();
}

class _ArgumentsStringPageState extends State<ArgumentsStringPage> {
  String? nomeString;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      var nome = ModalRoute.of(context)?.settings.arguments as String;

      setState(() {
        nomeString = nome;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arguments String'),
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            child: Text(nomeString ?? 'Nao existe'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop('Voltar informação do String');
            },
            child: const Text('Voltar'),
          )
        ],
      )),
    );
  }
}
