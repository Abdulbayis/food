import 'package:flutter/material.dart';
import 'package:food/mainpage_food.dart';
import 'package:food/widget/app_column.dart';
import 'package:food/widget/recomended_food_details.dart';

import 'food_page_body.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await dep.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Get.find<PopularProductControllers>().getPopularProductList();
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
         primarySwatch: Colors.blue,
      ),
      // home: FoodPageBody(),
      // home: RecomendedfoodDetails(),

      home: Mainpage(),
      // routes: {
      //   'main':(ctx){
      //     return FoodPageBody();
      //   },
      //   'foodDetails':(ctx){
      //     return FoodDetails();
      //   },
      // },
    );
  }
}

