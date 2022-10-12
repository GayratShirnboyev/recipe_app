import 'package:flutter/material.dart';
import 'package:recipe_app/page3.dart';
import 'package:recipe_app/page4.dart';

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Library',
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                child: Text(
                  ' <',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [],
              ),
              Center(
                child: TextButton(
                  child: Text(
                    'Shirinboyev',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Page3();
                        },
                      ),
                    );
                  },
                ),
              ),Center(
                child: TextButton(
                    child: Text(
                      'Samarqand',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Page4();
                          },
                        ),
                      );
                    },
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
