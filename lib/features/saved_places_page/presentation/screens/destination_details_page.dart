import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/common/constants/colors.dart';
import 'package:untitled1/common/constants/spaces.dart';

class DestinationDetailsPage extends StatefulWidget {
  const DestinationDetailsPage({super.key});

  @override
  State<DestinationDetailsPage> createState() => _DestinationDetailsPageState();
}

class _DestinationDetailsPageState extends State<DestinationDetailsPage> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryColor,
      body: SafeArea(
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: true,
              expandedHeight: 200,
              backgroundColor: CustomColors.primaryColor,
              automaticallyImplyLeading: true,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              title: const Text(
                "Destination Details",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Container(
                  decoration: const BoxDecoration(
                    color: CustomColors.primaryColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Spaces.defaultHorizontalPadding,
                      vertical: Spaces.defaultVerticalPadding,
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.star_rounded, color: Colors.yellow),
                            Icon(Icons.star_rounded, color: Colors.yellow),
                            Icon(Icons.star_rounded, color: Colors.yellow),
                            Icon(Icons.star_rounded, color: Colors.yellow),
                            Icon(Icons.star_half_rounded, color: Colors.yellow),
                            SizedBox(width: 12),
                            Text(
                              "4.5 of 5",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Pragser Wildsee",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined, size: 16, color: Colors.white),
                            SizedBox(width: 4),
                            Text(
                              "South Tyrol, Italy",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              child: Material(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Spaces.defaultHorizontalPadding,
                    vertical: Spaces.defaultVerticalPadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TabBar(
                        controller: _tabController,
                        labelColor: CustomColors.primaryColor,
                        unselectedLabelColor: CustomColors.subtitleColor,
                        indicatorColor: CustomColors.primaryColor,
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: const [
                          Tab(text: "Overview"),
                          Tab(text: "Photos"),
                          Tab(text: "Reviews"),
                        ],
                      ),
                      SizedBox(height: 24.h),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Maecenas faucibus mollis interdum. Nullamion eta quis risus eget urna mollis ornare vel eu leonardi faucibus mollis interdum. Maecenas faucibus mollis interdum. Nullamion eta quis risus eget urna mollis ornare vel eu leonardi faucibus mollis interdum. Maecenas faucibus mollis interdum. Nullamion eta quis risus eget urna mollis ornare vel eu leonardi faucibus mollis interdum",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Read More",
                            style: TextStyle(
                              color: CustomColors.primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      const Row(
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Availability",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "MON - SAT • 10:00 - 17:00",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: CustomColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      EasyInfiniteDateTimeLine(
                        firstDate: DateTime.now(),
                        focusDate: DateTime.now(),
                        lastDate: DateTime.now().add(const Duration(days: 180)),
                        activeColor: CustomColors.subtitleColor,
                        onDateChange: (selectedDate) {},
                        showTimelineHeader: false,
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: CustomColors.primaryColor.withOpacity(0.075),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: DropdownButtonFormField(
                                items: const [
                                  DropdownMenuItem(value: 1, child: Text("1")),
                                  DropdownMenuItem(value: 2, child: Text("2")),
                                  DropdownMenuItem(value: 3, child: Text("3")),
                                  DropdownMenuItem(value: 4, child: Text("4")),
                                ],
                                onChanged: (newValue) {},
                                isDense: true,
                                isExpanded: true,
                                decoration: const InputDecoration(
                                  labelText: "Adults",
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: DropdownButtonFormField(
                                items: const [
                                  DropdownMenuItem(value: 1, child: Text("1")),
                                  DropdownMenuItem(value: 2, child: Text("2")),
                                  DropdownMenuItem(value: 3, child: Text("3")),
                                  DropdownMenuItem(value: 4, child: Text("4")),
                                ],
                                onChanged: (newValue) {},
                                isDense: true,
                                isExpanded: true,
                                decoration: const InputDecoration(
                                  labelText: "Children (0-12)",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Book Now",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
