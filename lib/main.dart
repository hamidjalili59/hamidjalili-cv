import 'package:flutter/material.dart';
import 'package:mouse_parallax/mouse_parallax.dart';

void main() {
  runApp(const MyApp());
}

/// Example app.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Example(),
    );
  }
}

/// Example parallax animation
class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 250,
          height: 250,
          child: ParallaxStack(
            layers: [
              ParallaxLayer(
                xRotation: 0.01,
                yRotation: 0.01,
                xOffset: 5,
                yOffset: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: SizedBox(
                    width: 350,
                    height: 350,
                    child: Image.asset(
                      'assets/office.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              ParallaxLayer(
                xOffset: 3,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(36),
                    child: Image.asset('assets/hamid.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
