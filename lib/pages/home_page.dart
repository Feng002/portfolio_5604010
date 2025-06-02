import 'package:flutter/material.dart';
import 'slider_page.dart'; // Importiere die Slider-Seite

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Willkommen im Portfolio von Mustafa'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SliderPage()),
                );
              },
              child: Text('Zur Slider-Seite'),
            ),
          ],
        ),
      ),
    );
  }
}
