import 'package:flutter/material.dart';
import 'package:gym/pages/HomePage.dart';

class Biceps extends StatefulWidget {
  const Biceps({super.key});

  @override
  State<Biceps> createState() => _BicepsState();
}

class _BicepsState extends State<Biceps> {
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
