import 'package:flutter/material.dart';


class DestinationsPage extends StatelessWidget {
  final String destinationName;

  DestinationsPage({required this.destinationName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(destinationName),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              // Share action
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildImageCarousel(),
          _buildOverviewSection(),
          _buildAttractionsSection(),
          _buildActivitiesSection(),
          _buildAccommodationSection(),
          _buildTransportationSection(),
          _buildLocalTipsSection(),
          _buildReviewsSection(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Book action
        },
        child: Icon(Icons.book),
      ),
    );
  }

  Widget _buildImageCarousel() {
    return Container(
      height: 200.0,
      child: PageView(
        children: [
          Image.asset('assets/images/destination1.png', fit: BoxFit.cover),
          Image.asset('assets/images/Red_Mountains.png', fit: BoxFit.cover),
        ],
      ),
    );
  }

  Widget _buildOverviewSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Overview', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8.0),
          Text('Brief description of the destination...'),
          SizedBox(height: 8.0),
          Row(
            children: [
              Icon(Icons.star, color: Colors.amber),
              Text('4.5 (200 reviews)'),
            ],
          ),
          SizedBox(height: 8.0),

        ],
      ),
    );
  }

  Widget _buildAttractionsSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Key Attractions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          // Add attraction widgets here
        ],
      ),
    );
  }

  Widget _buildActivitiesSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Things to Do', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          // Add activity widgets here
        ],
      ),
    );
  }

  Widget _buildAccommodationSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Accommodation', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          // Add accommodation widgets here
        ],
      ),
    );
  }

  Widget _buildTransportationSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Transportation', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          // Add transportation widgets here
        ],
      ),
    );
  }

  Widget _buildLocalTipsSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Local Tips', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          // Add tips and guides here
        ],
      ),
    );
  }

  Widget _buildReviewsSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('User Reviews', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          // Add review widgets here
        ],
      ),
    );
  }
}
