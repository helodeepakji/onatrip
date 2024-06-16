import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                  size: 24,
                ),
                const Spacer(),
                Text(
                  "Account",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                Image.asset("assets/icon/menu.png")
              ],
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFBCEBA),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    height: 130,
                    width: 130,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Brandon Smith",
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.location_on,
                        color: Color(0xFFF28251),
                        size: 10,
                      ),
                      label: Text(
                        "BALI, INDONESIA",
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            fontSize: 10,
                            color: Color(0xFFF28251),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(5),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFFFE4D9),
                      ),
                      child: const Icon(
                        Icons.person,
                        color: Color(0xFFF28251),
                        size: 25,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.navigate_next,
                      color: Color(0xFFF28251),
                      size: 25,
                    ),
                    title: Text(
                      "Edit Profile",
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(5),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFFFE4D9),
                      ),
                      child: const Icon(
                        Icons.location_on,
                        color: Color(0xFFF28251),
                        size: 25,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.navigate_next,
                      color: Color(0xFFF28251),
                      size: 25,
                    ),
                    title: Text(
                      "Address",
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(5),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFFFE4D9),
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Color(0xFFF28251),
                        size: 25,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.navigate_next,
                      color: Color(0xFFF28251),
                      size: 25,
                    ),
                    title: Text(
                      "Wishlist",
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(5),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFFFE4D9),
                      ),
                      child: const Icon(
                        Icons.notifications,
                        color: Color(0xFFF28251),
                        size: 25,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.navigate_next,
                      color: Color(0xFFF28251),
                      size: 25,
                    ),
                    title: Text(
                      "Notification",
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(5),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFFFE4D9),
                      ),
                      child: const Icon(
                        Icons.payment,
                        color: Color(0xFFF28251),
                        size: 25,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.navigate_next,
                      color: Color(0xFFF28251),
                      size: 25,
                    ),
                    title: Text(
                      "Payment Setting",
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
