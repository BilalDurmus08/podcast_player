import 'package:flutter/material.dart';
import 'package:podcast_player/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final myTheme = ThemeData(
      primaryColor: const Color.fromARGB(80, 62, 69, 130),
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromARGB(80, 62, 69, 130),
        background: const Color.fromARGB(80, 62, 69, 130),
      ),
      textTheme: Theme.of(context).textTheme.copyWith(
            displayMedium: Theme.of(context)
                .textTheme
                .displayMedium!
                .apply(color: Colors.white, fontWeightDelta: DateTime.april),
            displaySmall: Theme.of(context)
                .textTheme
                .displaySmall!
                .apply(color: Colors.white, fontWeightDelta: DateTime.april),
            bodyMedium: Theme.of(context)
                .textTheme
                .bodyMedium!
                .apply(color: const Color.fromARGB(200, 196, 196, 196)),
            bodyLarge: Theme.of(context)
                .textTheme
                .bodyLarge!
                .apply(color: Colors.white),
            titleLarge: Theme.of(context)
                .textTheme
                .titleLarge!
                .apply(color: Colors.white, fontWeightDelta: DateTime.april),
            labelLarge: Theme.of(context).textTheme.labelLarge!.apply(
                  color: Colors.white,
                ),
          ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: const StartScreen(),
    );
  }
}
