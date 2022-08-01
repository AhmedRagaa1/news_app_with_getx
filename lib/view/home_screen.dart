import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_with_getx/controller/News_Controller.dart';
import 'package:news_app_with_getx/view/Bottom_nav_bar/business.dart';
import 'package:news_app_with_getx/view/Bottom_nav_bar/general.dart';
import 'package:news_app_with_getx/view/Bottom_nav_bar/health.dart';
import 'package:news_app_with_getx/view/Bottom_nav_bar/science.dart';
import 'package:news_app_with_getx/view/Bottom_nav_bar/sports.dart';
import 'package:news_app_with_getx/view/Bottom_nav_bar/technology.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';


class HomeScreen extends GetWidget
{

  @override
  Widget build(BuildContext context) {
    List<Widget>screens=[
      SportsScreen(),
      ScienceScreen(),
      HealthScreen(),
      GeneralScreen(),
      BusinessScreen(),
    ];
    NewsController controller = Get.put(NewsController());

    return Scaffold(
      appBar: AppBar(

        title: Text(
          'News App ',
        ),
        actions:
        [
         Padding(
           padding: const EdgeInsets.only(
              right: 20,
           ),
           child: Row(
             children: [
               GetBuilder<NewsController>(
                 init: NewsController(),
                 builder: (controller)=>Switch(
                     activeColor: Colors.black12,
                     activeTrackColor: controller.isDark ?Colors.white : Colors.blue,
                     inactiveThumbColor: Colors.blue,
                     inactiveTrackColor: Colors.white,
                     splashRadius: 100,
                     value: controller.isSwitched,
                     onChanged: (value)
                     {
                        controller.isSwitched =value;
                        controller.changeMode();
                     }

                   // activeColor:
                 ),


               ),
               Text(
                   'Dark',
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20,
                 ),
               ),
             ],
           ),
         ),

        ],
      ),
      bottomNavigationBar: GetBuilder<NewsController>(
        init: NewsController(),
        builder: (controller)=>CurvedNavigationBar(
          height: 50.0,
          index: controller.currentIndex.value,
          items:
           [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                Icons.sports,
        ),
                Text(
                    "Sports"
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                Icons.science,
        ),
                Text(
                    "science"
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                Icons.health_and_safety,
        ),
                Text(
                    "health"
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                Icons.generating_tokens,
        ),
                Text(
                    "general"
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                Icons.business,
        ),
                Text(
                    "business"
                ),
              ],
            ),






          ],

          color: controller.isDark ?Colors.grey : Colors.blue[300],
          buttonBackgroundColor: Colors.white,
          backgroundColor: controller.isDark ?Colors.grey : Colors.blueAccent,
          animationCurve: Curves.easeOut,
          animationDuration: Duration(milliseconds: 500),
          onTap:(val)
          {
            controller.currentIndex.value=val;
          },
        ),
      ),
      body: GetX<NewsController>(
        init: NewsController(),
        builder: (controller)=>screens[controller.currentIndex.value],

      ),
    );

  }

}

