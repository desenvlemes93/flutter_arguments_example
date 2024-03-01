import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Page e Positioned'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Stack(
          children: [
            Container(
              color: Colors.amber,
            ),
            Container(
              padding: const EdgeInsets.only(top: 60),
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.red,
            ),
            Positioned(
              bottom: 1,
              height: 100,
              left: 150,
              right: 30,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.pink,
                child: const Center(
                  child: Text('Posicionmento com Positioned'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 170,
                  width: MediaQuery.sizeOf(context).width * .4,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://www.zup.com.br/wp-content/uploads/2021/03/5ce2fde702ef93c1e994d987_flutter-1024x677.png'),
                    ),
                  ),
                  child: const Text('Brincando com o Flutter'),
                ),
              ),
            ),
            Positioned(
              top: 300,
              left: 100,
              height: 200,
              width: 200,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://media.licdn.com/dms/image/D4D03AQGsm3m1AgnBLA/profile-displayphoto-shrink_400_400/0/1698949750126?e=1707350400&v=beta&t=XRj-mAxR8c7rPtEa_fMsGbTbswPMyu5EdJDfhSHhWQI'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
