import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  final String name;
  final String email;
  final String about;
  final double sliderValue;
  final bool newsletter;
  final bool updates;
  final bool darkMode;
  final bool offlineMode;

  const SummaryPage({
    Key? key,
    required this.name,
    required this.email,
    required this.about,
    required this.sliderValue,
    required this.newsletter,
    required this.updates,
    required this.darkMode,
    required this.offlineMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Zusammenfassung')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Text('🔹 Profilinformationen', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Name: $name'),
            Text('E-Mail: $email'),
            Text('Über mich: $about'),
            SizedBox(height: 16),
            Text('🔹 Slider-Wert', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Aktueller Wert: ${sliderValue.toInt()}'),
            SizedBox(height: 16),
            Text('🔹 Einstellungen', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Newsletter: ${newsletter ? "Ja" : "Nein"}'),
            Text('Updates: ${updates ? "Ja" : "Nein"}'),
            Text('Dunkler Modus: ${darkMode ? "Aktiv" : "Inaktiv"}'),
            Text('Offline-Modus: ${offlineMode ? "Aktiv" : "Inaktiv"}'),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Zurück'),
            )
          ],
        ),
      ),
    );
  }
}