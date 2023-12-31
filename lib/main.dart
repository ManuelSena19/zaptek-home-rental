import 'package:flutter/material.dart';
import 'menu_page.dart' as m;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(10, 142, 217, 1),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(10, 142, 217, 1)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const m.Drawer(),
    );
  }
}
