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
            child: DynamicChecklist(),
          ),
        ));
  }
}

class DynamicChecklist extends StatefulWidget {
  @override
  _DynamicChecklistState createState() => _DynamicChecklistState();
}

class _DynamicChecklistState extends State<DynamicChecklist> {
  List<Map<String, bool>> items = [
    {"Pain": false},
    {"Lait": false},
    {"Café": false},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CheckboxListTile(
          title: Text(items[index].keys.first),
          value: items[index].values.first,
          onChanged: (bool? newValue) {
            setState(() {
              items[index][items[index].keys.first] = newValue!;
            });
          },
        );
      },
    );
  }
}
