import 'package:flutter/material.dart';
import 'package:flutter_passando_arguments_example/app/model/cliente.dart';

enum PopMenuPages {
  container,
  mediaquery,
  layoutBuilder,
  forms,
  cidades,
  stack,
  paint,
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? popVolta;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          actions: [
            PopupMenuButton(
              onSelected: (PopMenuPages selected) {
                switch (selected) {
                  case PopMenuPages.container:
                    break;
                  case PopMenuPages.mediaquery:
                    Navigator.of(context).pushNamed('/media_query');
                  case PopMenuPages.layoutBuilder:
                    Navigator.of(context).pushNamed('/layout_builer');
                  case PopMenuPages.forms:
                    Navigator.of(context).pushNamed('/forms');
                  case PopMenuPages.cidades:
                    Navigator.of(context).pushNamed('/cidades');
                  case PopMenuPages.stack:
                    Navigator.of(context).pushNamed('/stack');
                  case PopMenuPages.paint:
                    Navigator.of(context).pushNamed('/paint');
                }
              },
              itemBuilder: (context) {
                return <PopupMenuItem<PopMenuPages>>[
                  const PopupMenuItem<PopMenuPages>(
                    value: PopMenuPages.container,
                    child: Text('Container'),
                  ),
                  const PopupMenuItem<PopMenuPages>(
                    value: PopMenuPages.mediaquery,
                    child: Text('Media Query'),
                  ),
                  const PopupMenuItem<PopMenuPages>(
                    value: PopMenuPages.layoutBuilder,
                    child: Text('Layout Builder'),
                  ),
                  const PopupMenuItem<PopMenuPages>(
                    value: PopMenuPages.forms,
                    child: Text('Forms'),
                  ),
                  const PopupMenuItem<PopMenuPages>(
                    value: PopMenuPages.cidades,
                    child: Text('Cidades'),
                  ),
                  const PopupMenuItem<PopMenuPages>(
                    value: PopMenuPages.stack,
                    child: Text('Stack'),
                  ),
                  const PopupMenuItem<PopMenuPages>(
                    value: PopMenuPages.paint,
                    child: Text('Paint'),
                  )
                ];
              },
            )
          ],
        ),
        drawer: const Drawer(
          child: Center(
            child: Text('Texto Drawer'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/map_page', arguments: {
                    'id': 2,
                    'nome': 'Ricardo Lemes',
                    'Profissao': 'Desenvolvedor Mobile'
                  });
                },
                child: const Text('Arguments Map<String, dynamic>'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/lista_page', arguments: [
                    'Maria',
                    'José',
                    'Ricardo',
                    'Bento',
                    'Joaquim'
                  ]);
                },
                child: const Text('Arguments Lista Simples'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/classe_page',
                      arguments: Cliente(
                        nome: 'Ricardo',
                        profissao: 'Analista',
                        email: 'teste@gmail.com',
                      ));
                },
                child: const Text('Arguments Classes'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed('/arguments_inteiro_page', arguments: 100);
                },
                child: const Text('Arguments Inteiro'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () async {
                  String voltaInformacao =
                      await Navigator.of(context).pushNamed(
                    '/arguments_string_page',
                    arguments: 'Flutter vem crescendo a cada dia',
                  ) as String;

                  setState(() {
                    popVolta = voltaInformacao;
                  });
                },
                child: const Text('Arguments String'),
              ),
              Text(popVolta ?? 'Nao Existe Informação')
            ],
          ),
        ));
  }
}
