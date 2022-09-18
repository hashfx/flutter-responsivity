import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => OrientationBuilder(
        builder: ((context, orientation) {
          final isPortrait = orientation == Orientation.portrait;

          return Scaffold(
              appBar: AppBar(
                title: const Text('Grid View'),
              ),
              body: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                  40,
                  (index) => Card(
                    color: Colors.orange,
                    child: Center(child: Text('Item $index')),
                  ),
                ),
              ));
        }),
      );
}
