import 'package:flutter/material.dart';
import 'pagina_inicial.dart';

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
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                    ),
                    Text(
                      "Olá! ",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Bem vindo.",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Digite seu login para prosseguir. ",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              const Divider(
                thickness: 0.2,
                color: Colors.grey,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Align(
                alignment: Alignment.topLeft,
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    suffixIcon:
                        Icon(Icons.person_outline, color: Colors.grey[400]),
                    focusColor: Colors.grey[300],
                    labelText: "Digite seu email @rede",
                    labelStyle: const TextStyle(fontSize: 12),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              SizedBox(
                width: 400,
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Proximo",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PaginaInicial()));
                    },
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
