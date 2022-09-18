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
  Widget build(BuildContext context) =>
      OrientationBuilder(builder: ((context, orientation) {
        final isPortrait = orientation == Orientation.portrait;

        return isPortrait
            ? Container(
                color: Colors.blue,
                child: const Center(child: Text('PORTRAIT')),
              )
            : Container(
                color: Colors.green,
                child: const Center(child: Text('LANDSCAPE')));
      }));
  // {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('ORIENTATION'),
  //       ),
  //       body: MediaQuery.of(context).orientation == Orientation.portrait
  //       ? Container( // portrait
  //         color: Colors.blue,
  //         child: const Center(child: Text('PORTRAIT')),
  //       )
  //       : Container( // landscape
  //           color: Colors.green,
  //           child: const Center(child: Text('LANDSCAPE')),
  //       )
  //   );
  // }
  }
