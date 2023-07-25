import 'package:flutter/material.dart';

class BMWPage extends StatefulWidget {
  const BMWPage({super.key});
  @override
  _BMWPageState createState() => _BMWPageState();
}

class _BMWPageState extends State<BMWPage> {
  int _currentIndex = 0;
  final List<String> _carImages = [
    'images/bmw/m2.jpg',
    'images/bmw/m3.jpg',
    'images/bmw/serie-1.jpg',
    'images/bmw/serie-2.jpg',
    'images/bmw/serie-3.jpg',
    'images/bmw/serie-5.jpg',
    'images/bmw/serie-X.jpg',
    'images/bmw/x5.jpg',
  ];

  final List<Map<String, dynamic>> _carDetails = [
    {
      'name': 'BMW M2 Series',
      'model': '2022',
      'description':
          'The BMW X6 is a mid-size luxury crossover SUV by German automaker BMW.',
      'price': '\$45,000',
    },
    {
      'name': 'BMW M3 Series',
      'model': '2022',
      'description':
          'The BMW X6 is a mid-size luxury crossover SUV by German automaker BMW.',
      'price': '\$55,000',
    },
    {
      'name': 'BMW Series 1',
      'model': '2022',
      'description':
          'The BMW X6 is a mid-size luxury crossover SUV by German automaker BMW.',
      'price': '\$75,000',
    },
    {
      'name': 'BMW Series 2',
      'model': '2022',
      'description':
          'The BMW X6 is a mid-size luxury crossover SUV by German automaker BMW.',
      'price': '\$45,000',
    },
    {
      'name': 'BMW Series 3',
      'model': '2022',
      'description':
          'The BMW X6 is a mid-size luxury crossover SUV by German automaker BMW.',
      'price': '\$55,000',
    },
    {
      'name': 'BMW Series X',
      'model': '2022',
      'description':
          'The BMW X6 is a mid-size luxury crossover SUV by German automaker BMW.',
      'price': '\$75,000',
    },
    {
      'name': 'BMW Series 5',
      'model': '2022',
      'description':
          'The BMW X6 is a mid-size luxury crossover SUV by German automaker BMW.',
      'price': '\$45,000',
    },
    {
      'name': 'BMW x5',
      'model': '2022',
      'description':
          'The BMW X6 is a mid-size luxury crossover SUV by German automaker BMW.',
      'price': '\$55,000',
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