import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    double heightRatio = height / 812;
    double widthRatio = width / 375;

    double paddingVertical = heightRatio * 24;
    double paddingHorizontal = widthRatio * 20;

    double verticalConverter(double value) {
      double newValue = heightRatio * value;
      return newValue;
    }

    double horizontalConverter(double value) {
      double newValue = heightRatio * value;
      return newValue;
    }

    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: paddingVertical, horizontal: paddingHorizontal),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('Jakarta'),
                Expanded(child: Container()),
                const Icon(Icons.notifications_none),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
