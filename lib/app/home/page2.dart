import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int? id;
  var nomes = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      var novoNome = ModalRoute.of(context)?.settings.arguments as List;
      var teste = novoNome;

      setState(() {
        nomes = teste;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DDD'),
        ),
        body: Container(
          child: Center(
              child: Column(
            children: nomes.map((e) => Text(e)).toList(),
          )),
        ));
  }
}
