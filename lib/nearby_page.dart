import 'package:flutter/material.dart';

class NearbyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore Nearby'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Implement menu functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Nearby Attractions',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            NearbyList(items: [
              NearbyItem(
                image: 'assets/images/destination1.png',
                name: 'Attraction 1',
                description: 'A beautiful place to visit.',
              ),
              NearbyItem(
                image: 'assets/images/destination2.png',
                name: 'Attraction 2',
                description: 'A must-see landmark.',
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Nearby Restaurants',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            NearbyList(items: [
              NearbyItem(
                image: 'assets/images/img2.png',
                name: 'Restaurant 1',
                description: 'A great place to eat.',
              ),
              NearbyItem(
                image: 'assets/images/img3.png',
                name: 'Restaurant 2',
                description: 'Delicious food and great ambiance.',
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Nearby Hotels',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            NearbyList(items: [
              NearbyItem(
                image: 'assets/images/img4.png',
                name: 'Hotel 1',
                description: 'Comfortable and affordable.',
              ),
              NearbyItem(
                image: 'assets/images/img5.png',
                name: 'Hotel 2',
                description: 'Luxurious and convenient.',
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

class NearbyList extends StatelessWidget {
  final List<NearbyItem> items;

  const NearbyList({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: items.map((item) => NearbyCard(item: item)).toList(),
      ),
    );
  }
}

class NearbyItem {
  final String image;
  final String name;
  final String description;

  NearbyItem({
    required this.image,
    required this.name,
    required this.description,
  });
}

class NearbyCard extends StatelessWidget {
  final NearbyItem item;

  const NearbyCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(item.image, height: 80, width: 200, fit: BoxFit.cover),
          SizedBox(height: 5),
          Text(
            item.name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            item.description,
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
