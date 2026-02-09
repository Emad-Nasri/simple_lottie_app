import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildUI());
  }

  Widget _buildUI() {
    return Stack(
      children: [
        Center(
          child: Lottie.asset(
            'assets/animations/blue loading.json',
            repeat: true,
            reverse: true,
            width: 250,
            height: 250,
          ),
        ),
        Lottie.asset(
          'assets/animations/Confetti.json',
          width: MediaQuery.sizeOf(context).height,
          height: MediaQuery.sizeOf(context).width,
          fit: BoxFit.cover,
          repeat: false,
        ),
      ],
    );
  }
}
