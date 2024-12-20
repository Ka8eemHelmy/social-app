import 'package:flutter/material.dart';

class NameGameScreen extends StatefulWidget {
  const NameGameScreen({super.key});

  @override
  State<NameGameScreen> createState() => _NameGameScreenState();
}

class _NameGameScreenState extends State<NameGameScreen> {
  TextEditingController input = TextEditingController();
  List<String> names = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          if(names.isNotEmpty)
          TextButton(
            onPressed: () {
              setState(() {
                names.clear();
              });
            },
            child: const Text('Reset'),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Visibility(
                visible: names.isNotEmpty,
                replacement: const Center(
                  child: Text('Please, Enter Some Names'),
                ),
                child: ListView.separated(
                  padding: const EdgeInsets.all(8),
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return Card(
                      shadowColor: Colors.red,
                      elevation: 10,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            names.removeAt(index);
                          });
                        },
                        child: Text(names[index],
                            style: const TextStyle(
                              fontSize: 25,
                            )),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 12,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: input,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      names.add(input.text);
                      input.clear();
                    });
                  },
                  child: const Icon(
                    Icons.send,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
