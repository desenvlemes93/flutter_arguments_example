import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  String? nome;
  String? profissao;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final map =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

      setState(() {
        nome = map['nome'];
        profissao = map['Profissao'];
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arguments Map Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Nome:  ${nome ?? 'Nao encontrado'}'),
              subtitle: Text('Profissão: ${profissao ?? 'Sem profissão'}'),
            )
          ],
        ),
      ),
    );
  }
}
