import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Durations.extralong4,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUI(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var ticker = _controller.forward();
          ticker.whenComplete(() {
            _controller.reset();
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  Widget _buildUI() {
    return Stack(
      children: [
        Center(
          child: Lottie.asset(
            'assets/animations/blue loading.json',
            repeat: true,
            //reverse: true,
            width: 250,
            height: 250,
          ),
        ),
        Lottie.asset(
          'assets/animations/Confetti (1).json',
          controller: _controller,
          width: MediaQuery.sizeOf(context).height,
          height: MediaQuery.sizeOf(context).width,
          fit: BoxFit.cover,
          repeat: false,
        ),
      ],
    );
  }
}
