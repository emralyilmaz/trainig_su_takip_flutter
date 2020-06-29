import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Su Takip Uygulması",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SuTakip());
  }
}

class SuTakip extends StatefulWidget {
  @override
  _SuTakipState createState() => _SuTakipState();
}

class _SuTakipState extends State<SuTakip> {
  int suSayisi = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Su Takip Uygulaması"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Bugün $suSayisi bardak su içtiniz.",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          suSayisi++;
        }),
        child: Icon(Icons.add),
      ),
    );
  }
}
