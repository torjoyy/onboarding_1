import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Todo',

          style: TextStyle(
            color: Colors.white,
            fontWeight: .bold,
          ),
        ),

        backgroundColor: Color.fromARGB(255, 255, 153, 9),
        elevation: 0,
        centerTitle: true,
        
      ),
    );
  }
}