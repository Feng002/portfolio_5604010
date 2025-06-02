import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider-Seite')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              divisions: 100,
              label: _sliderValue.round().toString(),
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            Text('Wert: ${_sliderValue.toStringAsFixed(0)}'),
            SizedBox(height: 20),
            LinearProgressIndicator(value: _sliderValue / 100),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue.withOpacity(_sliderValue / 100),
            )
          ],
        ),
      ),
    );
  }
}
