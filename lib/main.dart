import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScren(),
    );
  }
}

class HomeScren extends StatelessWidget {
  HomeScren({Key? key}) : super(key: key);

  List personInfo = [
    {"name": "RaFiuL RaZu", "dept": "Computer Technology", "Roll": "102621"},
    {"name": "RoBiuL SaZu", "dept": "Civil Technology", "Roll": "102621"},
    {"name": "RaiHaN RaZu", "dept": "Electrical Technology", "Roll": "102621"},
    {"name": "RaFi IslaM", "dept": "Mechanical Technology", "Roll": "102621"},
    {"name": "RaFiZ Hasan", "dept": "Power Technology", "Roll": "102621"},
    {"name": "SaFkaT SHaFin", "dept": "AIDT Technology", "Roll": "102621"},
    {"name": "RaFiuL RaZu", "dept": "Cemical Technology", "Roll": "102621"},
    {"name": "RaFiuL RaZu", "dept": "Textitle Technology", "Roll": "102621"},
    {"name": "RaFiuL RaZu", "dept": "ICT Technology", "Roll": "102621"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
        title: Text("Home Design"),
      ),
      drawer: Drawer(),
      body:Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.grey,
          )
        ],
      )
    );
  }
}
