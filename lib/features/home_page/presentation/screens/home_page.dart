import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/common/constants/colors.dart';
import 'package:untitled1/common/constants/spaces.dart';
import 'package:untitled1/common/widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppbar(),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search for a place',
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Material(
                    color: CustomColors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(10),
                      child: const SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Icon(
                            Icons.tune,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "What are you looking for?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.subtitleColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Show more",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 96,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryWidget(
                      title: "Hiking",
                      icon: Icons.hiking,
                    ),
                    CategoryWidget(
                      title: "Cycling",
                      icon: Icons.pedal_bike,
                    ),
                    CategoryWidget(
                      title: "Climbing",
                      icon: Icons.terrain,
                    ),
                    CategoryWidget(
                      title: "Swimming",
                      icon: Icons.pool,
                    ),
                    CategoryWidget(
                      title: "Skiing",
                      icon: Icons.snowboarding,
                    ),
                    CategoryWidget(
                      title: "Sky Diving",
                      icon: Icons.airplanemode_active,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Destinations",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.subtitleColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Show more",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    PopularDestinationTileWidget(
                      imageUrl: "https://blog.thomascook.in/wp-content/uploads/2017/01/Santorini-Greece.jpg",
                      title: "Santorini",
                      locationSubtitle: "Greece",
                    ),
                    PopularDestinationTileWidget(
                      imageUrl: "https://blog.thomascook.in/wp-content/uploads/2017/01/Cappadocia-Turkey-popsugar.com_.jpg",
                      title: "Santorini",
                      locationSubtitle: "Greece",
                    ),
                    PopularDestinationTileWidget(
                      imageUrl: "https://ihplb.b-cdn.net/wp-content/uploads/2021/06/Maldives.jpeg",
                      title: "Santorini",
                      locationSubtitle: "Greece",
                    ),
                    PopularDestinationTileWidget(
                      imageUrl: "https://theplanetd.com/images/vietnam-sapa-rice-terraces.jpg",
                      title: "Santorini",
                      locationSubtitle: "Greece",
                    ),
                    PopularDestinationTileWidget(
                      imageUrl: "https://media.timeout.com/images/106032809/750/562/image.jpg",
                      title: "Santorini",
                      locationSubtitle: "Greece",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recommendations",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.subtitleColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Show more",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  RecommendationTileWidget(
                    title: "Dolomites",
                    imgUrl: "https://blog.thomascook.in/wp-content/uploads/2017/01/Santorini-Greece.jpg",
                  ),
                  RecommendationTileWidget(
                    title: "Dolomites",
                    imgUrl: "https://media.timeout.com/images/106032809/750/562/image.jpg",
                  ),
                  RecommendationTileWidget(
                    title: "Dolomites",
                    imgUrl: "https://ihplb.b-cdn.net/wp-content/uploads/2021/06/Maldives.jpeg",
                  ),
                  RecommendationTileWidget(
                    title: "Dolomites",
                    imgUrl: "https://theplanetd.com/images/vietnam-sapa-rice-terraces.jpg",
                  ),
                  RecommendationTileWidget(
                    title: "Dolomites",
                    imgUrl: "https://blog.thomascook.in/wp-content/uploads/2017/01/Cappadocia-Turkey-popsugar.com_.jpg",
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

class PopularDestinationTileWidget extends StatelessWidget {
  const PopularDestinationTileWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.locationSubtitle,
  });

  final String imageUrl;
  final String title;
  final String locationSubtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 18.h),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        imageBuilder: (context, imageProvider) => Container(
          width: 150,
          height: 200,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.85),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: CustomColors.subtitleColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 12,
                            color: CustomColors.primaryColor,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "South Tyrol, Italy",
                            style: TextStyle(
                              color: CustomColors.primaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        placeholder: (context, url) => Container(
          width: 150,
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
    );
  }
}

class RecommendationTileWidget extends StatelessWidget {
  const RecommendationTileWidget({
    super.key,
    required this.imgUrl,
    required this.title,
  });

  final String imgUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: imgUrl,
            imageBuilder: (context, imageProvider) => Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            placeholder: (context, url) => Container(
              width: 72,
              height: 72,
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
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: CustomColors.subtitleColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              const Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 12,
                    color: CustomColors.primaryColor,
                  ),
                  SizedBox(width: 4),
                  Text(
                    "South Tyrol, Italy",
                    style: TextStyle(
                      color: CustomColors.primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star_rounded,
                    color: Colors.yellow.shade700,
                    size: 18,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Colors.yellow.shade700,
                    size: 18,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Colors.yellow.shade700,
                    size: 18,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Colors.yellow.shade700,
                    size: 18,
                  ),
                  Icon(
                    Icons.star_half_rounded,
                    color: Colors.yellow.shade700,
                    size: 18,
                  ),
                ],
              ),
              const SizedBox(width: 6),
              const Text(
                "4.5 of 5",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 14.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.grey.shade200,
            child: Icon(icon),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: CustomColors.subtitleColor,
            ),
          ),
        ],
      ),
    );
  }
}
