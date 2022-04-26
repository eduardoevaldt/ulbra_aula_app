import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          backgroundColor: Colors.lightBlue[700],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/ulbra.png',
                fit: BoxFit.contain,
                height: 45,
              ),
            ],
          ),
          iconTheme: const IconThemeData(color: Colors.black),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(35),
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/aula.png',
                fit: BoxFit.contain,
                height: 110,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Padding(padding: EdgeInsets.only(top: 50))],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
