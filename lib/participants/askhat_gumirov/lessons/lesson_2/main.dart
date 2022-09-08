import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/askhat_gumirov/lessons/lesson_2/RowWidget.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: LayoutBuilder(
        builder: (context, constraints) {
          final maxWidth = constraints.biggest.width * 0.25;
          final maxHeight = constraints.maxHeight;
          return Row(
            children: [
              Container(
                width: maxWidth,
                color: Colors.blue,
                child: Column(
                  children: [
                    Placeholder(
                      fallbackHeight: maxHeight * 0.2,
                    ),
                    SizedBox(
                      height: maxHeight * 0.2,
                      width: double.infinity,
                      child: Image.network(
                        'https://images.unsplash.com/photo-1615789591457-74a63395c990?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXRpZnVsJTIwY2F0fGVufDB8fDB8fA%3D%3D&w=1000&q=80',
                      ),
                    ),
                    SizedBox(
                      height: maxHeight * 0.2,
                      width: double.infinity,
                      child: const Text('TEXTTEXTTEXTTEXTTEXTTEXTTEXTTEXTTEXTTEXTTEXTTEXT'),
                    ),
                    SizedBox(
                      height: maxHeight * 0.2,
                      width: double.infinity,
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.orange),
                          padding: MaterialStateProperty.all(const EdgeInsets.all(5)),
                        ),
                        onPressed: () {
                          return;
                        },
                        child: const Text('BUTTON'),
                      ),
                    ),
                    SizedBox(
                      height: maxHeight * 0.2,
                      width: double.infinity,
                      child: ListView(
                        children: const [
                          Center(child: Text('ListView')),
                          Center(child: Text('ListView')),
                          Center(child: Text('ListView')),
                          Center(child: Text('ListView')),
                          Center(child: Text('ListView')),
                          Center(child: Text('ListView')),
                          Center(child: Text('ListView')),
                          Center(child: Text('ListView')),
                          Center(child: Text('ListView')),
                          Center(child: Text('ListView')),
                          Center(child: Text('ListView')),
                          Center(child: Text('ListView')),
                          Center(child: Text('ListView')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: maxWidth,
                          child: const Icon(
                            Icons.home,
                            size: 50,
                            color: Colors.pink,
                          ),
                        ),
                        SizedBox(
                          width: maxWidth,
                          child: const TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 2, color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: maxWidth,
                          child: const ColoredBox(
                            color: Colors.green,
                            child: Text('Colored Box'),
                          ),
                        ),
                      ],
                    ),
                    const RowWidget(),
                    const RowWidget(),
                    const RowWidget(),
                    const RowWidget(),
                    const RowWidget(),
                    const RowWidget(),
                    const RowWidget(),
                    const RowWidget(),
                    const RowWidget(),
                    const RowWidget(),
                    const RowWidget(),
                    const RowWidget(),
                    const RowWidget(),
                    const RowWidget(),
                    const RowWidget(),
                    const RowWidget(),
                    const RowWidget(),
                    const RowWidget(),
                    const RowWidget(),
                    const RowWidget(),
                  ],
                ),
              ),
            ],
          );
        },
      )),
    );
  }
}
