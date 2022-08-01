import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_app_with_getx/model/news_model.dart';
import 'package:news_app_with_getx/view/Bottom_nav_bar/general.dart';
import 'package:news_app_with_getx/view/Bottom_nav_bar/sports.dart';

class NewsController extends GetxController
{
   RxInt currentIndex=2.obs;
  getData(String cat) async
  {
    final url = Uri.parse("https://newsapi.org/v2/top-headlines?country=eg&category=${cat}&apiKey=3265fec3bbc04be5b22cc918d76a47e6");
    http.Response response = await http.get(url);

    if(response.statusCode==200)
    {
      try{
        return NewsModel.fromJson(jsonDecode(response.body));
      }catch(error)
      {
        Get.snackbar("error", error.toString());
      }

    }
  }

  bool isSwitched = false;


   bool isDark = false;
  void changeMode()
   {
     isDark=!isDark;
     update();
     // if(isSwitched.isTrue)
     // {
     //   ThemeData.dark();
     // }else
     //   {
     //     ThemeData.light();
     //   }
   }




  }

