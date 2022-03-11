import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food/utilites/colors.dart';
import 'package:food/widget/app_column.dart';
import 'package:food/widget/icon.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/food3.png")),
                    color: Colors.black12),
              ),
            ),
            Positioned(
              top: 15,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                    icon: Icons.arrow_back_ios,
                    iconColor: Colors.black,
                  ),
                  AppIcon(
                      icon: Icons.shopping_cart_rounded,
                      iconColor: Colors.black),
                ],
              ),
            ),
            Positioned(
              left: 15,
              right: 0,
              bottom: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Zinger Burger"),
                  Text(
                    "Indroduce ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Text(
                      "Chicken burgers get a bad rap. They often get left in the dust by other burger alternatives like turkey and veggies. Chicken burgers can definitely be a tad lean, which for some that can read as boring. Not these burgers, though!"),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
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
                    EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Row(
                  children: [
                    Icon(
                      Icons.remove,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5),
                    Text("0",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(width: 5),
                    Icon(Icons.add, color: Colors.black),
                  ],
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
      ),
    );
  }
}
