import 'package:flutter/material.dart';
import 'package:untitled1/recommendation_page.dart';
import 'package:untitled1/review_page.dart';

import 'blog_page.dart';
import 'destination_page.dart';
import 'nearby_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    HomeScreen(),
    DestinationsPage(destinationName: '',),
    RecommendationsPage(),
    ReviewsPage(),
    NearbyPage(),
    BlogPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi Sophia'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Destinations'),
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Recommendations'),
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.reviews),
              title: Text('Reviews'),
              onTap: () {
                _onItemTapped(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Nearby'),
              onTap: () {
                _onItemTapped(4);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('Blog'),
              onTap: () {
                _onItemTapped(5);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex], // Add this line to display the selected page
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on, color: Colors.black,),
            label: 'Destinations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star, color: Colors.black,),
            label: 'Recommendations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.reviews, color: Colors.black,),
            label: 'Reviews',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map, color: Colors.black,),
            label: 'Nearby',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article, color: Colors.black,),
            label: 'Blog',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for destinations, hotels, etc.',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          // Category Section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryCard(icon: Icons.flight, name: 'Flights'),
                CategoryCard(icon: Icons.hotel, name: 'Hotels'),
                CategoryCard(icon: Icons.directions_car, name: 'Car Rentals'),
                CategoryCard(icon: Icons.travel_explore, name: 'Camping'),
              ],
            ),
          ),
          SizedBox(height: 16),
          // Popular Destinations
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Popular Destinations',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DestinationCard(
                    image: 'assets/images/destination1.png',
                    name: 'Place 1',
                    quote: '“The world is a book and those who do not travel read only one page.” – St. Augustine',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DestinationCard(
                    image: 'assets/images/destination2.png',
                    name: 'Place 2',
                    quote: '“Not all those who wander are lost.” – J.R.R. Tolkien',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DestinationCard(
                    image: 'assets/images/destination3.png',
                    name: 'Place 3',
                    quote: '“Traveling – it leaves you speechless, then turns you into a storyteller.” – Ibn Battuta',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          // Additional sections can be added here (Recommended for You, User Reviews, etc.)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Recommendations',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          // New section with image on left and text on right
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                RecommendationItem(
                  image: 'assets/images/img2.jpg',
                  name: 'Beautiful Beach',
                  rating: 4.5,
                ),
                RecommendationItem(
                  image: 'assets/images/img3.jpg',
                  name: 'Mountain Adventure',
                  rating: 4.7,
                ),
                RecommendationItem(
                  image: 'assets/images/img4.jpg',
                  name: 'City Exploration',
                  rating: 4.3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendationItem extends StatelessWidget {
  final String image;
  final String name;
  final double rating;

  const RecommendationItem({
    Key? key,
    required this.image,
    required this.name,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Image.asset(
            image,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: List.generate(5, (index) {
                    return Icon(
                      index < rating ? Icons.star : Icons.star_border,
                      size: 16,
                      color: Colors.amber,
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String name;

  const CategoryCard({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            child: Icon(icon, size: 30),
          ),
          SizedBox(height: 8),
          Text(name),
        ],
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  final String image;
  final String name;
  final String quote;

  const DestinationCard({
    Key? key,
    required this.image,
    required this.name,
    required this.quote,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,  // Set a fixed width for the card
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image, height: 120, width: 200, fit: BoxFit.cover),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            quote,
            style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
