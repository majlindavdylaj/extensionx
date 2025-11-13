import 'package:flutter/material.dart';
import 'package:extensionx/extensionx.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    double value = 1.105.xRoundToDecimals(2);
    double value1 = double.parse(1.105.toStringAsFixed(2));
    DateTime? dateTime = DateTime.now();
    bool isBetween = dateTime.xIsBetween(dateTime, dateTime, inclusive: true);
    print('$value : $value1');
    print(isBetween);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Utilx'),
      ),
      body: Center(child: Text('Utilx Example App')),
    );
  }
}
