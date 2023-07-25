import 'package:flutter/material.dart';

class AUDIPage extends StatefulWidget {
  const AUDIPage({super.key});
  @override
  _AUDIPageState createState() => _AUDIPageState();
}

class _AUDIPageState extends State<AUDIPage> {
  int _currentIndex = 0;
  final List<String> _carImages = [
    'images/audi/a3.jpg',
    'images/audi/a4.jpg',
    'images/audi/a6.jpg',
    'images/audi/a8.jpg',
    'images/audi/q5.jpg',
    'images/audi/q8.jpg',
  ];

  final List<Map<String, dynamic>> _carDetails = [
    {
      'name': 'Audi A3',
      'model': '2022',
      'description':
          'The AUDI AG stands for sporty vehicles, high build quality and progressive design for Vorsprung durch Technik.',
      'price': '\$45,000',
    },
    {
      'name': 'Audi A4',
      'model': '2022',
      'description':
          'The AUDI AG stands for sporty vehicles, high build quality and progressive design for Vorsprung durch Technik.',
      'price': '\$55,000',
    },
    {
      'name': 'AUDI A6',
      'model': '2022',
      'description':
          'The AUDI AG stands for sporty vehicles, high build quality and progressive design for Vorsprung durch Technik.',
      'price': '\$75,000',
    },
    {
      'name': 'AUDI A8',
      'model': '2022',
      'description':
          'The AUDI AG stands for sporty vehicles, high build quality and progressive design for Vorsprung durch Technik.',
      'price': '\$45,000',
    },
    {
      'name': 'AUDI Q8',
      'model': '2022',
      'description':
          'The AUDI AG stands for sporty vehicles, high build quality and progressive design for Vorsprung durch Technik.',
      'price': '\$55,000',
    },
    {
      'name': 'AUDI Q5',
      'model': '2022',
      'description':
          'The AUDI AG stands for sporty vehicles, high build quality and progressive design for Vorsprung durch Technik.',
      'price': '\$75,000',
    },
  ];

  //funksioni per next page
  void _nextImage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _carImages.length;
    });
  }

  //funksioni per prev page
  void _previousImage() {
    setState(() {
      _currentIndex =
          (_currentIndex - 1 + _carImages.length) % _carImages.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to BMW Model Cars"),
        centerTitle: true,
      ),
      body: Column(children: [
         Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(_carImages[_currentIndex]),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              _carDetails[_currentIndex]['name'],
              style:
                  const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(10), 
              child: Text(
                'Model: ${_carDetails[_currentIndex]['model']}',
                style: const TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10), 
              child: Text(
                'Price: ${_carDetails[_currentIndex]['price']}',
                style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10), 
              child: Text(
                'Description: ${_carDetails[_currentIndex]['description']}',
                style: const TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.normal),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: _previousImage,
                ),
                const SizedBox(width: 10.0),
                IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: _nextImage,
                ),
              ],
            ),
        
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Back"),
          style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10)
          ),
        )
      ]),
    );
  }
}