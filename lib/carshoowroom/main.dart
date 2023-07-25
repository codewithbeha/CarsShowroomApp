import 'package:flutter/material.dart';
import 'bmw/BMWPage.dart';
import 'audi/AUDIPage.dart';
import 'benz/BENZPage.dart';
import 'vw/VWPage.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MainPage(),
    ), 
  );
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to our Cars Showroom"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  print("BMW Page");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) {
                        return BMWPage();
                      },
                    ),
                  );
                },
                child: const Text("Bmw"),
              ),
              ElevatedButton(
                onPressed: () {
                  print("AUDI Page");
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) {
                      return AUDIPage();
                    },
                  ));
                },
                child: const Text("Audi"),
              ),
              ElevatedButton(
                onPressed: () {
                  print("MERCEDES BENZ Page");
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) {
                      return BENZPage();
                    },
                  ));
                },
                child: const Text("Benz"),
              ),
              ElevatedButton(
                onPressed: () {
                  print("VOLKSWAGEN Page");
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) {
                      return VWPage();
                    },
                  ));
                },
                child: const Text("VW"),
              )
            ],
          )
        ],
      ),
    );
  }
}
