import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Demo'),
          ),
          body: Center(
            child: InteractiveSlider(),
          ),
        ));
  }
}

class InteractiveSlider extends StatefulWidget {
  @override
  _InteractiveSliderState createState() => _InteractiveSliderState();
}

class _InteractiveSliderState extends State<InteractiveSlider> {
  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: _currentValue,
          onChanged: (newValue) {
            setState(() {
              _currentValue = newValue;
            });
          },
          min: 0,
          max: 100,
        ),
        Text('Valeur actuelle: ${_currentValue.toStringAsFixed(2)}')
      ],
    );
  }
}
