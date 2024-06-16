import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/common/constants/colors.dart';
import 'package:untitled1/common/constants/spaces.dart';
import 'package:untitled1/common/widgets/custom_appbar.dart';
import 'package:untitled1/features/saved_places_page/presentation/screens/destination_details_page.dart';

class SavedPlacesPage extends StatefulWidget {
  const SavedPlacesPage({super.key});

  @override
  State<SavedPlacesPage> createState() => _SavedPlacesPageState();
}

class _SavedPlacesPageState extends State<SavedPlacesPage> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
              TabBar(
                controller: _tabController,
                tabAlignment: TabAlignment.fill,
                labelPadding: EdgeInsets.symmetric(vertical: 2.h),
                labelColor: CustomColors.primaryColor,
                unselectedLabelColor: CustomColors.subtitleColor,
                indicatorColor: CustomColors.primaryColor,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: const [
                  Tab(text: "Places"),
                  Tab(text: "Hotels"),
                  Tab(text: "Destinations"),
                  Tab(text: "Tours"),
                ],
              ),
              SizedBox(height: 16.h),
              const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SavedPlacesListWidget(
                    imageUrl: "https://blog.thomascook.in/wp-content/uploads/2017/01/Santorini-Greece.jpg",
                    title: "Snorkling at Kuta Beach",
                    locationSubtitle: "Bali, Indonesia",
                  ),
                  SavedPlacesListWidget(
                    imageUrl: "https://media.timeout.com/images/106032809/750/562/image.jpg",
                    title: "Snorkling at Kuta Beach",
                    locationSubtitle: "Bali, Indonesia",
                  ),
                  SavedPlacesListWidget(
                    imageUrl: "https://ihplb.b-cdn.net/wp-content/uploads/2021/06/Maldives.jpeg",
                    title: "Snorkling at Kuta Beach",
                    locationSubtitle: "Bali, Indonesia",
                  ),
                  SavedPlacesListWidget(
                    imageUrl: "https://theplanetd.com/images/vietnam-sapa-rice-terraces.jpg",
                    title: "Snorkling at Kuta Beach",
                    locationSubtitle: "Bali, Indonesia",
                  ),
                  SavedPlacesListWidget(
                    imageUrl: "https://blog.thomascook.in/wp-content/uploads/2017/01/Cappadocia-Turkey-popsugar.com_.jpg",
                    title: "Snorkling at Kuta Beach",
                    locationSubtitle: "Bali, Indonesia",
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

class SavedPlacesListWidget extends StatelessWidget {
  const SavedPlacesListWidget({
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
      padding: EdgeInsets.only(bottom: 18.h),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        imageBuilder: (context, imageProvider) => Container(
          width: double.infinity,
          height: 200,
          padding: const EdgeInsets.all(12),
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
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const DestinationDetailsPage()),
                    );
                  },
                  borderRadius: BorderRadius.circular(10),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    tileColor: Colors.white.withOpacity(0.85),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    title: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          size: 16,
                          Icons.location_on_outlined,
                          color: CustomColors.primaryColor,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          locationSubtitle,
                          style: const TextStyle(
                            fontSize: 16,
                            color: CustomColors.primaryColor,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    trailing: const Icon(Icons.chevron_right_rounded),
                  ),
                ),
              ),
            ],
          ),
        ),
        placeholder: (context, url) => Container(
          width: double.infinity,
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
