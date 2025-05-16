import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:  Scaffold(
      appBar: AppBar(
        title: Text('Portfolio'),
      ),
      body: Center(
        child: Text('Willkommen im Portfolio von Mustafa'),
      ),
    ),
    );

  }}

void main() {
  runApp(HomePage());}


