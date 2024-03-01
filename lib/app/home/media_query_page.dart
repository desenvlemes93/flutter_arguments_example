import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final heightContainer = MediaQuery.sizeOf(context).height;
    final widthContainer = MediaQuery.sizeOf(context).width;

    print(MediaQuery.of(context).orientation);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Query Page'),
      ),
      body: Column(
        children: [
          Container(
            height: heightContainer * .5,
            width: widthContainer,
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
          Expanded(
            child: Container(
              color: Colors.orange,
              width: widthContainer * .2,
              child: const Text('Teste '),
            ),
          )
        ],
      ),
    );
  }
}
