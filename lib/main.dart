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
          // decoration: BoxDecoration(
          //   color: const Color.fromARGB(36, 107, 236, 253),
          //   boxShadow: const [
          //     BoxShadow(
          //       color: Colors.black12,
          //       blurRadius: 2,
          //       spreadRadius: 0,
          //       offset: Offset(1, 1),
          //     )
          //   ],
          //   borderRadius: BorderRadius.circular(16),
          // ),
          width: 550,
          height: 550,
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
                    width: 600,
                    height: 600,
                    child: Image.asset(
                      'assets/office.jpg',
                      fit: BoxFit.fill,
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
