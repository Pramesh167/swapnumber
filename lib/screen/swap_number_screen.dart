import 'package:flutter/material.dart';

class SwapNumberScreen extends StatefulWidget {
  const SwapNumberScreen({super.key});

  @override
  State<SwapNumberScreen> createState() => _SwapNumberScreenState();
}

class _SwapNumberScreenState extends State<SwapNumberScreen> {
  int? first;
  int? second;
  int? temp;
  int? result1 = 0;
  int? result2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Swapping Numbers',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                first = int.parse(value);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your frist number',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                second = int.parse(value);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your second number',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  temp = first;
                  first = second;
                  second = temp;
                  result1 = first;
                  result2 = second;
                });
              },
              child: const Text('Swap'),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'the first number is now : $result1',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'the second number is now : $result2',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
