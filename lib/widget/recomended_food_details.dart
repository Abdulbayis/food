import 'package:flutter/material.dart';
import 'package:food/utilites/colors.dart';
import 'package:food/widget/icon.dart';

class RecomendedfoodDetails extends StatelessWidget {
  const RecomendedfoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.clear), Icon(Icons.shopping_cart_outlined)],
            ),
            bottom: PreferredSize(
                child: Container(
                  margin: EdgeInsets.only(left: 0),
                  child: Center(
                      child: Text(
                    "Chicken pottytherichad",
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  )),
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                ),
                preferredSize: Size.fromHeight(20)),
            pinned: true,
            backgroundColor: AppColor.MainColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/food3.png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: Text(
                    "While the Zinger Sandwich had quite the launch in the USA…literally, they launched it into space…it’s sadly since been discontinued. However, it had already existed in over 120 countries for nearly 30 years prior to that launch, and in most of those countries, it’s still a menu staple. But if you’re in the U.S., thankfully you can follow along with this recipe instead of having to hop on a plane.While the Zinger Sandwich had quite the launch in the USA…literally, they launched it into space…it’s sadly since been discontinued. However, it had already existed in over 120 countries for nearly 30 years prior to that launch, and in most of those countries, it’s still a menu staple. But if you’re in the U.S., thankfully you can follow along with this recipe instead of having to hop on a plane.While the Zinger Sandwich had quite the launch in the USA…literally, they launched it into space…it’s sadly since been discontinued. However, it had already existed in over 120 countries for nearly 30 years prior to that launch, and in most of those countries, it’s still a menu staple. But if you’re in the U.S., thankfully you can follow along with this recipe instead of having to hop on a plane.While the Zinger Sandwich had quite the launch in the USA…literally, they launched it into space…it’s sadly since been discontinued. However, it had already existed in over 120 countries for nearly 30 years prior to that launch, and in most of those countries, it’s still a menu staple. But if you’re in the U.S., thankfully you can follow along with this recipe instead of having to hop on a plane.",
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(left: 20, right: 20),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 50,
              right: 50,
              top: 10,
              bottom: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    size: 36,
                    iconColor: AppColor.MainColor,
                    icon: Icons.remove),
                    Text("\$12.88 "+" X "+" 0 ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
                AppIcon(size: 36, iconColor: AppColor.MainColor, icon: Icons.add),
              ],
            ),
          ),
           Container(
          height: 120,
          padding: EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
          decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20 * 2),
                topRight: Radius.circular(20 * 2),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 15, bottom: 20, left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child:Icon(Icons.favorite,
                color: AppColor.MainColor,
                size: 30,
                ),
              ),
              Container(
                child: Text(
                  "\$10 | Add to cart",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColor.MainColor,
                ),
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
