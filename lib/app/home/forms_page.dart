import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({super.key});

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  var listaNomes = ['Arroz', 'Feijao', 'Maça', 'Relogio', 'Carregador'];
  bool _selectCheckoutButtom = false;
  DateTime? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms Page'),
      ),
      body: Form(
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (_, index) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextFormField(
                        maxLines: null,
                        decoration: InputDecoration(
                          label: const Text('Nome Completo'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DropdownButtonFormField<List<String>>(
                          items: ['Arroz', 'Feijao'].map((e) {
                            return DropdownMenuItem<List<String>>(
                                value: [e.toString()], child: Text(e));
                          }).toList(),
                          onChanged: (List<String>? nome) {}),

                      // children: [
                      Column(
                        children: listaNomes.map((e) {
                          return CheckboxListTile(
                            value: false,
                            onChanged: (_) {},
                            title: Text(e),
                          );
                        }).toList(),
                      ),

                      InkWell(
                        onTap: () async {
                          var dataS = await showDatePicker(
                              context: context,
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2030));

                          setState(() {
                            data = dataS;
                          });
                        },
                        child: Text(data?.toString() ?? 'Data nao informado'),
                      )
                    ],
                    // ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
