import 'package:flutter/material.dart';

class ListaPage extends StatelessWidget {
  const ListaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final listaClientes = ModalRoute.of(context)?.settings.arguments as List;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Arguments Lista Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: listaClientes.map((nomes) => Text(nomes)).toList(),
      ),
    );
  }
}
