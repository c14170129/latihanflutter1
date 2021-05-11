import 'dart:developer' as developer;

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 1;
  int pengali = 2;
  String status = "Angka";

  void hitTambah() {
    setState(() {
      pengali = pengali + number;
    });
  }

  void hitReset() {
    setState(() {
      number = 1;
      pengali = 2;
    });
  }

  void hitKali() {
    setState(() {
      number = number * pengali;
    });
  }

  void hitGanti() {
    if (status == "Angka") {
      setState(() {
        status = "Huruf";
      });
    } else {
      setState(() {
        status = "Angka";
      });
    }
  }

  String getHasil() {
    String ascii = String.fromCharCode(number);
    if (status == "Angka") {
      return number.toString();
    } else {
      return ascii;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Aplikasi Pertama dengan Button")),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient:
                LinearGradient(colors: <Color>[Colors.amber, Colors.blue])),
        margin: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Pengali/Penambah: $pengali"),
              Text(getHasil()),
              Text(status),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(child: Text("x$pengali"), onPressed: hitKali),
                  ElevatedButton(child: Text("Tambah"), onPressed: hitTambah),
                  ElevatedButton(child: Text("Ganti"), onPressed: hitGanti),
                  ElevatedButton(child: Text("Reset"), onPressed: hitReset)
                ],
              )
            ]),
      ),
    ));
  }
}
