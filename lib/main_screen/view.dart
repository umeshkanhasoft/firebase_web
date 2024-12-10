import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_web/main_screen/state.dart';
import 'package:test_web/model/movie_item.dart';
import 'package:test_web/utils/colors.dart';

import 'logic.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({super.key});

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  final MainScreenLogic logic = Get.put(MainScreenLogic());
  final MainScreenState state = Get.find<MainScreenLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: Obx(
            () => BottomNavigationBar(
              currentIndex: state.currentIndex.value,
              onTap: logic.onTabTapped,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: AppColors.mediumLight,
              backgroundColor: AppColors.heavyDark,
              unselectedItemColor: AppColors.darkLight,
              selectedLabelStyle:
                  const TextStyle(color: AppColors.light, fontSize: 15),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.movie_creation_outlined),
                  label: 'Movie',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Series',
                ),
              ],
            ),
          )),
      body:
          Container() /*Obx(
        () => ListView.builder(
          itemCount: state.movieItem.length,
          itemBuilder: (context, index) {
            MovieItem item = state.movieItem[index];
            return ResponsiveBuilder(
              builder:
                  (BuildContext context, SizingInformation sizingInformation) {
                if (sizingInformation.isMobile) {
                  return logic.commonWidget(item);
                } else if (sizingInformation.isDesktop) {
                  return logic.commonWidget(item);
                } else if (sizingInformation.isTablet) {
                  return logic.commonWidget(item);
                } else {
                  return const Center(
                    child: Text(
                      "Device Not Supported",
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                }
              },
            );
          },
        ),
      )*/
      ,
    );
  }

  @override
  void dispose() {
    Get.delete<MainScreenLogic>();
    super.dispose();
  }
}
