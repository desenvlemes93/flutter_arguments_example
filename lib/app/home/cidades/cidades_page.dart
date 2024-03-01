import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_passando_arguments_example/app/home/cidades/model/cidade_model.dart';

class CidadesPage extends StatefulWidget {
  const CidadesPage({super.key});

  @override
  State<CidadesPage> createState() => _CidadesPageState();
}

class _CidadesPageState extends State<CidadesPage> {
  var cidades = <CidadeModel>[];

  @override
  void initState() {
    super.initState();
    _loadCities();
  }

  Future<void> _loadCities() async {
    var cidadeMap = await rootBundle.loadString('assets/cidades.json');

    await Future.delayed(
      const Duration(seconds: 2),
    );
    setState(() {
      var cidadeList = json.decode(cidadeMap);

      cidades =
          cidadeList.map<CidadeModel>((e) => CidadeModel.fromMap(e)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cidade Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {},
      ),
      body: ListView.builder(
        itemCount: cidades.length,
        itemBuilder: (context, index) {
          var cidade = cidades[index];

          return ListTile(
            title: Text(cidade.cidade),
            subtitle: Text(cidade.estado),
          );
        },
      ),
    );
  }
}
