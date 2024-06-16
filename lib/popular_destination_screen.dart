import 'package:flutter/material.dart';

class PopularDestinationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular Destinations'),
        backgroundColor: Colors.white, // Set app bar background color
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 338,
          height: 239,
          margin: EdgeInsets.only(left: 22, top: 305),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  fontSize: 13.5,
                  letterSpacing: 0.27,
                  color: Color(0xFF3A4256),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Destination 01
                  Container(
                    width: 158,
                    height: 201,
                    decoration: BoxDecoration(
                      color: Color(0xFFFBCEBA),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'The Beauty of Natural Landscape',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 11,
                            letterSpacing: 0.22,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 56.5),
                        Text(
                          'Caracas, Venezuela',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 8,
                            letterSpacing: 0.16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 6.87),
                        Container(
                          width: 16,
                          height: 16,
                          color: Color(0xFFFF9635),
                        ),
                        SizedBox(height: 12.06),
                        Container(
                          width: 8,
                          height: 8,
                          color: Colors.white,
                        ),
                        SizedBox(height: 46.11),
                        Container(
                          width: 6,
                          height: 6,
                          color: Color(0xFF593D39),
                        ),
                      ],
                    ),
                  ),
                  // Destination 02
                  Container(
                    width: 158,
                    height: 201,
                    decoration: BoxDecoration(
                      color: Color(0xFFFBCEBA),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Explore The Cultural Katara Village',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 11,
                            letterSpacing: 0.22,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 56.5),
                        Text(
                          'Doha, Qatar',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 8,
                            letterSpacing: 0.16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 6.47),
                        Container(
                          width: 16,
                          height: 16,
                          color: Color(0xFFFF9635),
                        ),
                        SizedBox(height: 7.47),
                        Container(
                          width: 8,
                          height: 8,
                          color: Colors.white,
                        ),
                        SizedBox(height: 9.17),
                        Container(
                          width: 6,
                          height: 6,
                          color: Color(0xFF593D39),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PopularDestinationsScreen(),
  ));
}
