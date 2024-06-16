import 'package:flutter/material.dart';
import 'package:untitled1/common/constants/colors.dart';
import 'package:untitled1/common/constants/spaces.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/common/widgets/custom_appbar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:untitled1/features/profile_screen/presentation/widgets/profile_element_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: Spaces.defaultHorizontalPadding,
            vertical: Spaces.defaultVerticalPadding,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomAppbar(),
              SizedBox(height: 32.h),
              CachedNetworkImage(
                imageUrl: "https://www.w3schools.com/howto/img_avatar2.png",
                imageBuilder: (context, imageProvider) => Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                placeholder: (context, url) => Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade200,
                  ),
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: CustomColors.primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              const Text(
                "Brandon Smith",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    size: 18,
                    Icons.location_on_outlined,
                    color: CustomColors.primaryColor,
                  ),
                  SizedBox(width: 6),
                  Text(
                    "Bali, Indonasia",
                    style: TextStyle(
                      fontSize: 16,
                      color: CustomColors.primaryColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ProfileElementButton(
                      icon: Icons.person,
                      title: 'Edit Profile',
                      onTap: () {},
                    ),
                    ProfileElementButton(
                      icon: Icons.location_city_outlined,
                      title: 'Address',
                      onTap: () {},
                    ),
                    ProfileElementButton(
                      icon: Icons.favorite,
                      title: 'My Wishlist',
                      onTap: () {},
                    ),
                    ProfileElementButton(
                      icon: Icons.notifications,
                      title: 'Notifications',
                      onTap: () {},
                    ),
                    ProfileElementButton(
                      onTap: () {},
                      isLast: true,
                      icon: Icons.payment,
                      title: 'Payment Settings',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
