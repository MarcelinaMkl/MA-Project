import 'package:flutter/material.dart';
import 'package:gym/pages/HomePage.dart';

class Legs extends StatefulWidget {
  const Legs({super.key});

  @override
  State<Legs> createState() => _LegsState();
}

class _LegsState extends State<Legs> {
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