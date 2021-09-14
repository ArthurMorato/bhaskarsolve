import 'dart:math';

import 'package:flutter/material.dart';

TextEditingController aController = TextEditingController();
TextEditingController bController = TextEditingController();
TextEditingController cController = TextEditingController();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Bhaskar Solve App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home:
      const MyHomePage(title: 'Bhaskar Solve'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _x1 = 0.0, _x2 = 0.0;

  void _bhaskarSolve(){
    if(true){

    }
  }

  void _bhaskarSolvePlus(){
    if(true){

    }
    setState(() {
      var d=pow(int.parse(bController.text),2) -
          (4 *int.parse(aController.text)*int.parse(cController.text));
      _x1 = (((-(int.parse(bController.text))) +
          sqrt(d))/(2 * (int.parse(aController.text))));
      print(_x1);
    });
  }

  void _bhaskarSolveMinus(){
    setState(() {
      var d=pow(int.parse(bController.text),2) -
          (4 *int.parse(aController.text)*int.parse(cController.text));
      _x2 = (((-(int.parse(bController.text))) -
          sqrt(d))/(2 * (int.parse(aController.text))));
      print(_x2);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        shadowColor: Colors.amber,
        titleTextStyle: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        centerTitle: true,
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {

            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert_outlined),
            onPressed: () {

            },
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //const Padding(padding: EdgeInsets.all(50)),
            const Text(
                "Olá!",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
            ),
            Center(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: const Text(
                    "Eu sou o Bhaskar, e vou ajudar você a resolver essa equação "
                        "de segundo grau.\n"
                        "\n"
                        "Para isso, preencha com os valores de A, B e C, os "
                        "campos e pressione o botão para calcular. :)",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.2,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        textAlign: TextAlign.center,
                        controller: aController,
                        cursorHeight: 25,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(0)
                          )
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        textAlign: TextAlign.center,
                        controller: bController,
                        cursorHeight: 25,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(0)
                          )
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        textAlign: TextAlign.center,
                        controller: cController,
                        cursorHeight: 25,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(0)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      'x1 = $_x1',
                      style: const TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'x2 = $_x2',
                      style: const TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ]
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsetsDirectional.only(top: 20.0),
                child: OutlinedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white60),
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(13)),
                  ),
                  label: const Text('Resultado',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                    ),
                  ),
                  icon: const Icon(Icons.air,size: 33,color: Colors.amber),
                  onPressed:() {
                    _bhaskarSolvePlus();
                    _bhaskarSolveMinus();
                  }),
                ),
              ),
          ],
        ),
      ),
      ),
    );
  }
}
