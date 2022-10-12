import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('menu'),
        ),
        drawer: Container(color: Colors.amber,
          child: Drawer(
            child: ListView(
              children: [
                  Image.asset('assets/flag.jpg'), TextButton(
                  child: Text('Next page'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return page2();
                    }));
                  },
                ),Container(
                  color: Colors.amber,
                )
              ],
            ),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: Image.asset(
                    'assets/vega.png', width: 250, height: 250,
                    alignment: Alignment.center,
                    scale: 0.67,
                    // cacheHeight: 250,
                  ),
                ),
                Text(
                  '\n\nFood Ordening App\n\n\n',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      minimumSize: MaterialStateProperty.all(Size(275, 65)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                      )),
                  child: Text(
                    'Get a meal',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Page1();
                    }));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
