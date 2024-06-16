// Flutter code

import 'package:flutter/material.dart';

class RecommendationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 376,
      height: 242,
      margin: EdgeInsets.only(top: 570),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Text(
              'Recommendation',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                fontSize: 13.5,
                letterSpacing: 0.27,
                color: Color(0xFF3A4256),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  RecommendationItem(
                    image: AssetImage('path_to_image'),
                    title: 'Prague City Tour',
                    location: 'Czech Republic',
                    rating: 4.5,
                  ),
                  SizedBox(height: 16),
                  RecommendationItem(
                    image: AssetImage('path_to_image'),
                    title: 'Prague City Tour',
                    location: 'Czech Republic',
                    rating: 4.5,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendationItem extends StatelessWidget {
  final ImageProvider image;
  final String title;
  final String location;
  final double rating;

  const RecommendationItem({
    Key? key,
    required this.image,
    required this.title,
    required this.location,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 302,
      height: 71,
      margin: EdgeInsets.only(left: 21),
      decoration: BoxDecoration(
        color: Color(0xFFFBCEBA),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 71,
            height: 71,
            decoration: BoxDecoration(
              color: Color(0xFFFBCEBA),
              borderRadius: BorderRadius.circular(9),
              image: DecorationImage(
                image: image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 19,
                    letterSpacing: 0.38,
                    color: Color(0xFF3A4256),
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 12,
                      color: Color(0xFFF28251),
                    ),
                    SizedBox(width: 4),
                    Text(
                      location,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 8.5,
                        letterSpacing: 1.1475,
                        color: Color(0xFFF28251),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 11,
                    color: Color(0xFFFF9635),
                  ),
                  SizedBox(width: 4),
                  Text(
                    '$rating OUT OF 5',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 9,
                      letterSpacing: 0.54,
                      color: Color(0xFF9CA9C5),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: RecommendationCard(),
    ),
  ));
}
