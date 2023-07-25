import 'package:flutter/material.dart';

class BENZPage extends StatefulWidget {
  const BENZPage({super.key});
  @override
  _BENZPageState createState() => _BENZPageState();
}

class _BENZPageState extends State<BENZPage> {
  int _currentIndex = 0;
  final List<String> _carImages = [
    'images/benz/amg.jpg',
    'images/benz/gle.jpg',
    'images/benz/e.jpg',
    'images/benz/c.jpg',
    'images/benz/s.jpg',
    'images/benz/g.jpg',
    
  ];

  final List<Map<String, dynamic>> _carDetails = [
    {
      'name': 'MERCEDES BENZ AMG',
      'model': '2022',
      'description':
          'It develops, manufactures and distributes premium and luxury cars and vans.',
      'price': '\$45,000',
    },
    {
      'name': 'MERCEDES BENZ C',
      'model': '2022',
      'description':
          'It develops, manufactures and distributes premium and luxury cars and vans.',
      'price': '\$55,000',
    },
    {
      'name': 'MERCEDES BENZ E',
      'model': '2022',
      'description':
          'It develops, manufactures and distributes premium and luxury cars and vans.',
      'price': '\$75,000',
    },
    {
      'name': 'MERCEDES BENZ S',
      'model': '2022',
      'description':
          'It develops, manufactures and distributes premium and luxury cars and vans.',
      'price': '\$45,000',
    },
    {
      'name': 'MERCEDES BENZ G',
      'model': '2022',
      'description':
          'It develops, manufactures and distributes premium and luxury cars and vans.',
      'price': '\$55,000',
    },
    {
      'name': 'MERCEDES BENZ GLE',
      'model': '2023',
      'description':
          'It develops, manufactures and distributes premium and luxury cars and vans.',
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
        title: const Text("Welcome to Mercedes Benz Model Cars"),
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