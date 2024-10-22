import 'package:flutter/material.dart';

class Todopage extends StatefulWidget {
  const Todopage({super.key});

  @override
  State<Todopage> createState() => _TodopageState();
}

class _TodopageState extends State<Todopage> {
  String greetingMsg = ''; // This should be part of the widget's state
  TextEditingController tec1 = TextEditingController();

  // Define greetuser inside the state class
  void greetuser() {
    setState(() {
      greetingMsg = 'Hello ${tec1.text}'; // Update the greeting message
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMsg,
                  style: const TextStyle(
                      fontSize: 24)), // Display the greeting message
              const SizedBox(height: 20),
              TextField(
                controller: tec1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Type marital status',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: greetuser, // Call greetuser method
                child: const Text('Tap me!'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    tec1.dispose(); // Dispose of the controller when the widget is destroyed
    super.dispose();
  }
}
