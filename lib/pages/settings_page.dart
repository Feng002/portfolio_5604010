import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool newsletter = false;
  bool updates = false;
  bool darkMode = false;
  bool offlineMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Einstellungen')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            CheckboxListTile(
              title: Text('Newsletter abonnieren'),
              value: newsletter,
              onChanged: (value) => setState(() => newsletter = value ?? false),
            ),
            CheckboxListTile(
              title: Text('Updates erhalten'),
              value: updates,
              onChanged: (value) => setState(() => updates = value ?? false),
            ),
            SwitchListTile(
              title: Text('Dunkler Modus'),
              value: darkMode,
              onChanged: (value) => setState(() => darkMode = value),
            ),
            SwitchListTile(
              title: Text('Offline-Modus'),
              value: offlineMode,
              onChanged: (value) => setState(() => offlineMode = value),
            ),
            Divider(),
            Text(
              'Aktuelle Auswahl:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Newsletter: ${newsletter ? "Ja" : "Nein"}'),
            Text('Updates: ${updates ? "Ja" : "Nein"}'),
            Text('Dunkler Modus: ${darkMode ? "Aktiv" : "Inaktiv"}'),
            Text('Offline-Modus: ${offlineMode ? "Aktiv" : "Inaktiv"}'),
          ],
        ),
      ),
    );
  }
}