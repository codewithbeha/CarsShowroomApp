import 'package:flutter/material.dart';

class VWPage extends StatefulWidget {
  const VWPage({super.key});
  @override
  _VWPageState createState() => _VWPageState();
}

class _VWPageState extends State<VWPage> {
  int _currentIndex = 0;
  final List<String> _carImages = [
    'images/vw/g7.jpg',
    'images/vw/b8.png',
    'images/vw/cc.png',
    'images/vw/g5.png',
    'images/vw/g6.png',
    'images/vw/g8.png',
  ];

  final List<Map<String, dynamic>> _carDetails = [
    {
      'name': 'Volkswagen Golf 7',
      'model': '2022',
      'description':
          'It develops, manufactures and distributes premium and luxury cars and vans.',
      'price': '\$45,000',
    },
    {
      'name': 'Volkswagen Passat B8',
      'model': '2022',
      'description':
          'It develops, manufactures and distributes premium and luxury cars and vans.',
      'price': '\$55,000',
    },
    {
      'name': 'Volkswagen Passat CC',
      'model': '2022',
      'description':
          'It develops, manufactures and distributes premium and luxury cars and vans.',
      'price': '\$75,000',
    },
    {
      'name': 'Volkswagen Golf 5',
      'model': '2022',
      'description':
          'It develops, manufactures and distributes premium and luxury cars and vans.',
      'price': '\$45,000',
    },
    {
      'name': 'Volkswagen Golf 6',
      'model': '2022',
      'description':
          'It develops, manufactures and distributes premium and luxury cars and vans.',
      'price': '\$55,000',
    },
    {
      'name': 'Volkswagen Golf 8',
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
        title: const Text("Welcome to Volkswagen Model Cars"),
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