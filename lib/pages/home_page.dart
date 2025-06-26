import 'package:flutter/material.dart';
import 'slider_page.dart';
import 'profile_form_page.dart';
import 'settings_page.dart';
import 'summary_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Startseite')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SliderPage()),
                );
              },
              child: Text('Zur Slider-Seite'),
            ),

            SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileFormPage()),
                );
              },
              child: Text('Zur Profil-Formular-Seite'),
            ),

            SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
              child: Text('Zur Einstellungs-Seite'),
            ),

            SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                // Nur Testdaten – hier musst du echte Werte aus dem State übergeben!
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SummaryPage(
                      name: 'Max Mustermann',
                      email: 'max@example.com',
                      about: 'Ich liebe Flutter!',
                      sliderValue: 75,
                      newsletter: true,
                      updates: false,
                      darkMode: true,
                      offlineMode: false,
                    ),
                  ),
                );
              },
              child: Text('Zur Zusammenfassung'),
            ),
          ],
        ),
      ),
    );
  }
}