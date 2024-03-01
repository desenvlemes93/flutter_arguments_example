import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Builder'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Container(
                height: constraints.maxHeight * .5,
                width: constraints.maxWidth,
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Texto 1'),
                    const Text('Texto 2'),
                    const Text('Texto 3'),
                    const Text('Texto 4'),
                    Container(
                      color: Colors.blue,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Container'),
                          Text('T'),
                          Text('Flutter'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.orange,
                width: constraints.maxWidth * .2,
                height: constraints.maxHeight * .5,
                child: const Text('Teste '),
              )
            ],
          );
        },
      ),
    );
  }
}
