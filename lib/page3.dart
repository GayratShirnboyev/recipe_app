import 'package:flutter/material.dart';
import 'package:recipe_app/page5.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     '',
        //   ),
        // ),
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
                children: [
                  Center(
                    child: Image.asset(
                      'assets/pic.png',
                      width: 600,
                      height: 600,
                    ),
                  ),TextButton(child: Text('G\'ayrat'),onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Page5();
                    }));
                  },)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
