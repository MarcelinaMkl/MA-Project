import 'package:flutter/material.dart';
import 'package:gym/pages/HomePage.dart';

class Triceps extends StatefulWidget {
  const Triceps({super.key});

  @override
  State<Triceps> createState() => _TricepsState();
}

class _TricepsState extends State<Triceps> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Homepage(),
                ),
              );
            },
            icon: const Icon(Icons
                .arrow_back), // Replace `Icons.your_icon_here` with the desired icon
          ),
        ),
      ),
    );
  }
}