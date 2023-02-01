import 'package:flutter/material.dart';
import 'package:test_riverpod/counter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade500,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
          ),
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CounterPage(),
            ),
          ),
          child: const Text("Counter page"),
        ),
      ),
    );
  }
}
