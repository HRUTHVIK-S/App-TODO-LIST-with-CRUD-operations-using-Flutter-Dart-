import 'package:flutter/material.dart';

class Counterpage extends StatefulWidget {
  const Counterpage({super.key});

  @override
  State<Counterpage> createState() => _CounterpageState();
}

class _CounterpageState extends State<Counterpage> {
  int _counter = 0;

  void _incrementcounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementcounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('FLUTTER DEMO PAGE'),
        ),
        backgroundColor: const Color.fromARGB(255, 188, 104, 203),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times!'),
            Text(
              _counter.toString(),
              style: const TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: _decrementcounter,
            backgroundColor: Colors.red,
            child: const Icon(Icons
                .remove), // Optional: different color for the decrement button
          ),
          FloatingActionButton(
            onPressed: _incrementcounter,
            backgroundColor: Colors.green,
            child: const Icon(Icons
                .add), // Optional: different color for the increment button
          ),
        ],
      ),
    );
  }
}
