import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_riverpod/main.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<int> counter = ref.watch(counterProvider(5));

    return Scaffold(
      backgroundColor: Colors.green.shade500,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Counter"),
      ),
      body: Center(
        child: Text(
          counter
              .when(
                data: (int value) => value,
                error: (Object e, _) => e,
                loading: () => 5,
              )
              .toString(),
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}
