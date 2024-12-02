import 'package:flutter/material.dart';
import 'package:gym/pages/HomePage.dart';

class Abs extends StatefulWidget {
  const Abs({super.key});

  @override
  State<Abs> createState() => _AbsState();
}

class _AbsState extends State<Abs> {
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