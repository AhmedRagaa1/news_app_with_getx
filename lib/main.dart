import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_with_getx/controller/News_Controller.dart';
import 'package:news_app_with_getx/theme.dart';
import 'package:news_app_with_getx/view/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    NewsController controller = Get.put(NewsController());
    return GetBuilder<NewsController>(
      init: NewsController(),
      builder: (controller)=> GetMaterialApp(
        title: 'News App',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: controller.isDark ?  ThemeMode.dark : ThemeMode.light ,

        home: HomeScreen(),
      ),


    );
  }
}


// apiKey=3265fec3bbc04be5b22cc918d76a47e6
//base url = https://newsapi.org
//method = /v2/top-headlines
//q = country=eg&
// https://newsapi.org/v2/top-headlines?country=eg&apiKey=3265fec3bbc04be5b22cc918d76a47e6


