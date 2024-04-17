import 'package:flutter/material.dart';
import 'package:swapnum/screen/swap_number_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SwapNumberScreen(),
    );
  }
}
