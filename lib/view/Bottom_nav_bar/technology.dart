import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_with_getx/controller/News_Controller.dart';
import 'package:news_app_with_getx/model/news_model.dart';
import 'package:news_app_with_getx/view/web_view.dart';

class TechnologyScreen extends GetWidget
{

  @override
  Widget build(BuildContext context) {
    NewsController controller = Get.put(NewsController());

    return Scaffold(
        body: FutureBuilder(
          future: controller.getData("technology"),
          builder: (context , AsyncSnapshot snapshot)
          {
            NewsModel data = snapshot.data;
            if(snapshot.hasData)
            {
              return ListView.builder(
                  itemCount: data.articles.length,
                  itemBuilder: (context , index)
                  {
                    return InkWell(
                      onTap: ()
                      {
                        Get.to(WebViewScreen(
                          data.articles[index].url,
                        ));
                      },
                      child: Card(
                        color: controller.isDark ?Colors.grey : Colors.white,
                        elevation: 10,
                        margin: EdgeInsets.all(10),
                        shadowColor: Colors.green.shade400,
                        shape: RoundedRectangleBorder(
                          // borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children:
                          [
                            Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.network(
                                data.articles[index].urlToImage.toString(),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(
                              data.articles[index].title.toString(),
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textDirection: TextDirection.rtl,
                            ),
                            Text(
                              data.articles[index].description.toString(),
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                              textDirection: TextDirection.rtl,

                            ),
                          ],
                        ),

                      ),
                    );
                  }
              );
            }else
            {
              return Center(child: CircularProgressIndicator());
            }

          },

        ),
    );

  }

}
