import 'package:flutter/material.dart';

import 'pages/home_scr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FOOD DECORE UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        canvasColor: const Color.fromARGB(0, 249, 228, 188),
        useMaterial3: true,
        textTheme: TextTheme(
          titleMedium: const TextStyle(color: Colors.black, fontSize: 15),
          titleSmall: TextStyle(color: Colors.grey[600], fontSize: 12),
        ),
      ),
      home: const HomeScr(),
    );
  }
}
