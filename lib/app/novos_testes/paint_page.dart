import 'package:flutter/material.dart';

class PaintPage extends StatefulWidget {
  const PaintPage({super.key});

  @override
  State<PaintPage> createState() => _PaintPageState();
}

class _PaintPageState extends State<PaintPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page Paint'),
        ),
        body: Container(
          height: 200,
          width: 200,
          color: Colors.red,
        ));
  }
}
