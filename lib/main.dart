import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Part1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Welcome, ",
                  style: TextStyle(
                      color: Color(0xFF7367F0),
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.25),
                ),
                Text(
                  "1301204303 - Harvian",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF4B4B4B),
                      letterSpacing: 0.25),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 35),
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color(0xFF4839EB), Color(0xFF7367F0)]),
                borderRadius: BorderRadius.circular(8.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Text(
                  'status test TOEFL anda:',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                SizedBox(height: 8),
                Text("LULUS",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.25)),
                SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Listening\n..........80',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        'Structure\n...........80',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        'Reading\n...............90',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Container(
            child: Text(
              'Riwayat Tes',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.25),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color(0xFF4839EB), Color(0xFF7367F0)]),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20, width: 65),
                Text(
                  'Test ECCT :                 450',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                Text(
                  'Test Bahasa Spanyol         10000',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
