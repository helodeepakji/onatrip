import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final ValueNotifier<bool> _dark = ValueNotifier<bool>(false);
  final ValueNotifier<double> _widthFactor = ValueNotifier<double>(1.0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _dark,
      builder: (context, color, child) {
        return ValueListenableBuilder<double>(
          valueListenable: _widthFactor,
          builder: (context, factor, child) {
            return Scaffold(
              backgroundColor: _dark.value ? Colors.black : Colors.white,
              appBar: AppBar(
                title: Text(
                  'onatrip.world',
                  style: TextStyle(color: Color(0xFF5C16FF)),
                ),
              ),
              body: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * _widthFactor.value,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Destination(),

                        SearchBar(),
                        Categories(),
                        PopularDestination(),
                        Recommendation(),
                       // Image(),
                        //PragueCityTour(),
                        //Location(),
                        MainMenu(),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class Destination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row( // Change Column to Row
      children: [
        Container(
          width: 178,
          height: 30,
          padding: const EdgeInsets.only(bottom: 1),
          decoration: BoxDecoration(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start, // Align to the start (left)
            children: [
              Text(
                'Destinations',
                style: TextStyle(
                  color: Color(0xFF3A4256),
                  fontSize: 20,
                  fontFamily: 'Helvetica',
                ),
              ),
              const SizedBox(width: 12),
              Container(
                width: 11,
                height: 18.56,
                child: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 323,
          height: 105,
          child: Stack(
            children: [
              Positioned(
                left: 274,
                top: 53,
                child: Container(
                  width: 49,
                  height: 52,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 27,
                        height: 28,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://picsum.photos/27/28"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'SURFING',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFFC6CFE2),
                          fontSize: 10,
                          fontFamily: 'Montserrat',
                          height: 0,
                          letterSpacing: 0.20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 185,
                top: 54.74,
                child: Container(
                  width: 52,
                  height: 50.26,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 38.26,
                        child: Text(
                          'CAMPING',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFFC6CFE2),
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            height: 0,
                            letterSpacing: 0.20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 93,
                top: 55.33,
                child: Container(
                  width: 56,
                  height: 49.67,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 37.67,
                        child: Text(
                          'KAYAKING',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFFC6CFE2),
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            height: 0,
                            letterSpacing: 0.20,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 12,
                        top: 0,
                        child: Container(
                          width: 28,
                          height: 24.50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                              NetworkImage("https://picsum.photos/28/24"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 45,
                child: Container(
                  width: 58,
                  height: 58,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 58,
                          height: 58,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF28150),
                            shape: OvalBorder(),
                            shadows: [
                              BoxShadow(
                                color: Color(0xFFFDD5C3),
                                blurRadius: 8,
                                offset: Offset(0, 5),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 15,
                        child: Container(
                          width: 18,
                          height: 25,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                              NetworkImage("https://picsum.photos/18/25"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 1,
                top: 0,
                child: Container(
                  width: 321,
                  height: 16,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What Are You Looking For',
                        style: TextStyle(
                          color: Color(0xFF3A4256),
                          fontSize: 13.50,
                          fontFamily: 'Montserrat',
                          height: 0,
                          letterSpacing: 0.27,
                        ),
                      ),
                      const SizedBox(width: 71),
                      Text(
                        'Show All',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFFC6CFE2),
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          height: 0,
                          letterSpacing: 0.26,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 336,
          height: 50,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 336,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF6F8FC),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFEDF1F9)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 21,
                top: 16,
                child: SizedBox(
                  width: 226,
                  height: 16,
                  child: Text(
                    'Search Destination or Hotel',
                    style: TextStyle(
                      color: Color(0xFFB7C4E0),
                      fontSize: 13,
                      fontFamily: 'Montserrat',
                      letterSpacing: 0.26,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 301.15,
                top: 17.25,
                child: Container(
                  width: 13.54,
                  height: 13.50,
                  child: Icon(Icons.search),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PopularDestination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 338,
          height: 239,
          child: Stack(
            children: [
              Positioned(
                left: 180,
                top: 38,
                child: Container(
                  width: 158,
                  height: 201,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFBCEBA),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9)),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 11,
                        top: 143,
                        child: Text(
                          'Explore The Cultural\nKatara Village',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontFamily: 'Montserrat',
                            letterSpacing: 0.22,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 12,
                        top: 177.19,
                        child: Row(
                          children: [
                            Container(
                              width: 6.32,
                              height: 7.49,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://picsum.photos/6/7"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(width: 4.68),
                            Text(
                              'Doha, Qatar',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                                fontFamily: 'Montserrat',
                                letterSpacing: 0.16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 2,
                top: 38,
                child: Container(
                  width: 158,
                  height: 201,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFACDB9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9)),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 13,
                        top: 143,
                        child: Text(
                          'The Beauty of\nNatural Landscape',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontFamily: 'Montserrat',
                            letterSpacing: 0.22,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 177.19,
                        child: Row(
                          children: [
                            Container(
                              width: 6.32,
                              height: 7.49,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://picsum.photos/6/7"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(width: 4.68),
                            Text(
                              'Caracas, Venezuela',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                                fontFamily: 'Montserrat',
                                letterSpacing: 0.16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Text(
                  'Popular Destinations',
                  style: TextStyle(
                    color: Color(0xFF3A4256),
                    fontSize: 13.50,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Recommendation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Popular Destinations',
              style: TextStyle(
                color: Color(0xFF3A4256),
                fontSize: 13.50,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFBCEBA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                  // You can replace this with your actual image widget

                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CZECH REPUBLIC',style: TextStyle(fontSize: 10)),
                      Text(
                        'PragueCity',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.grey),
                          Icon(Icons.star, color: Colors.grey),
                          SizedBox(width: 5),
                          Text(
                            '4.0', // You can replace this with actual rating
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(), // Optional: Add a divider between recommendations
          // Add more Recommendation items as needed
        ],
      ),
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336,
      height: 70,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 336,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(27),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFF0F1F2),
                    blurRadius: 19,
                    offset: Offset(0, 12),
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 42.62,
            top: 19.92,
            child: Container(
              width: 248.88,
              height: 32.08,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Add your icons or widgets here
                  // Example:
                  Icon(Icons.menu),
                  SizedBox(width: 20), // Adjust spacing between icons/widgets
                  Icon(Icons.search),
                  SizedBox(width: 20), // Adjust spacing between icons/widgets
                  Icon(Icons.favorite),
                  SizedBox(width: 20), // Adjust spacing between icons/widgets
                  Icon(Icons.notifications),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

