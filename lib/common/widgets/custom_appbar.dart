import 'package:flutter/material.dart';
import 'package:untitled1/common/constants/colors.dart';
import 'package:untitled1/features/auth_page/presentation/screens/signup_page.dart';
import 'package:untitled1/features/home_page/presentation/screens/home_page.dart';
import 'package:untitled1/features/profile_screen/presentation/screens/profile_page.dart';
import 'package:untitled1/features/saved_places_page/presentation/screens/saved_places_page.dart';
import 'package:untitled1/gen/assets.gen.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Assets.images.onatriplogo.image(
          height: 28,
        ),
        Container(
          decoration: BoxDecoration(
            color: CustomColors.primaryColor,
            borderRadius: BorderRadius.circular(50),
          ),
          width: 40,
          height: 40,
          child: PopupMenuButton(
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => const HomePage()),
                      (route) => false,
                    );
                  },
                  child: const Text('Home'),
                ),
                PopupMenuItem(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => const ProfileScreen()),
                      (route) => false,
                    );
                  },
                  child: const Text('Profile'),
                ),
                PopupMenuItem(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => const SavedPlacesPage()),
                      (route) => false,
                    );
                  },
                  child: const Text('Saved Places'),
                ),
                PopupMenuItem(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => const SignupPage()),
                      (route) => false,
                    );
                  },
                  child: const Text('Logout'),
                ),
              ];
            },
            surfaceTintColor: CustomColors.primaryColor,
            splashRadius: 20,
            iconColor: Colors.white,
            icon: const Icon(Icons.menu),
          ),
        ),
      ],
    );
  }
}
