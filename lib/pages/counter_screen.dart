import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  void increase() => setState(() => counter++);
  void decrease() => setState(() => counter--);
  void reset() => setState(() => counter=0);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.5,
        title: const Text('CounterScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter Clicks',style: TextStyle(fontSize: 20)),
            Text('$counter', style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingButtons(
        decreaseFn: decrease,
        increaseFn: increase,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingButtons extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingButtons({
    Key? key, 
    required this.increaseFn, 
    required this.decreaseFn, 
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
            onPressed: () => increaseFn(),
            child: const Icon(Icons.add),
        ),
        FloatingActionButton(
            onPressed: () => resetFn(),
            child: const Icon(Icons.exposure_zero),
        ),
        FloatingActionButton(
            onPressed: () => decreaseFn(),
            child: const Icon(Icons.exposure_minus_1),
        ),
      ],
    );
  }
}