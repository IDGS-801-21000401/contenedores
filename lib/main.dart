import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CONTENEDORES',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'CONTENEDORES'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.deepPurple],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Contenedor 1 tocado')),
                );
              },
              child: Container(
                width: 200,
                height: 160,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.purple, Colors.pink],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/instagram.png',
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "INSTAGRAM",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Tú cuenta es",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    const Text(
                      "@SteamnGFX",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(3, 3), // changes position of shadow
                  ),
                ],
              ),
              margin: const EdgeInsets.all(50),
              child: const Center(
                  child: Text('2',
                      style: TextStyle(fontSize: 23, color: Colors.white))),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 3, color: Colors.white),
              ),
              margin: const EdgeInsets.all(30),
              child: const Center(
                  child: Text('3',
                      style: TextStyle(fontSize: 25, color: Colors.white))),
            ),
            Container(
              color: Colors.yellow,
              margin: const EdgeInsets.all(10),
              child: const Center(
                  child: Text('4',
                      style: TextStyle(fontSize: 25, color: Colors.black))),
            ),
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Contenedor 5 tocado')),
                );
              },
              child: Container(
                color: Colors.purple,
                width: 80,
                height: 80,
                child: const Center(
                    child: Text('5',
                        style: TextStyle(fontSize: 25, color: Colors.white))),
              ),
            ),
            Container(
              color: Colors.orange,
              alignment: Alignment.topCenter,
              child: const Text('6',
                  style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(3, 3), // changes position of shadow
                  ),
                ],
              ),
              transform: Matrix4.rotationZ(0.1),
              child: const Center(child: Text('7',style: TextStyle(fontSize: 25, color: Colors.white))),
            ),
            Container(
              color: Colors.cyan,
              constraints: const BoxConstraints.expand(height: 100),
              child: const Center(child: Text('8',style: TextStyle(fontSize: 25, color: Colors.white))),
            ),
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Contenedor 9 tocado',style: TextStyle(fontSize: 15, color: Colors.deepOrange))),
                );
              },
              onDoubleTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Contenedor 9 doble toque',style: TextStyle(fontSize: 15, color: Colors.blueAccent))),
                );
              },
              onLongPress: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Contenedor 9 toque largo',style: TextStyle(fontSize: 15, color: Colors.white))),
                );
              },
              child: Container(
                color: Colors.lime,
                width: 120,
                height: 120,
                child: const Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.touch_app,
                          size: 40,
                          color: Colors.black,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '9',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.indigo,
              margin: const EdgeInsets.only(left: 10),
              child: const Center(child: Text('10',style: TextStyle(fontSize: 25, color: Colors.white))),
            ),
            Container(
              color: Colors.teal,
              child: const SizedBox(
                width: 100,
                height: 50,
                child: Center(child: Text('11',style: TextStyle(fontSize: 25, color: Colors.white))),
              ),
            ),
            Container(
              color: Colors.grey,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('12',style: TextStyle(fontSize: 25, color: Colors.white)),
                  Text('Doce',style: TextStyle(fontSize: 25, color: Colors.brown)),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Contenedor 13 tocado')),
                );
              },
              child: Container(
                color: Colors.brown,
                width: 100,
                height: 150,
                child: const Center(child: Text('13',style: TextStyle(fontSize: 25, color: Colors.white))),
              ),
            ),
            Container(
              color: Colors.amber,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star),
                  SizedBox(width: 10),
                  Text('14' ,style: TextStyle(fontSize: 25, color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Botón',
        child: const Icon(Icons.add),
      ),
    );
  }
}
