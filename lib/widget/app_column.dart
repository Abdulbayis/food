import 'package:flutter/material.dart';
import 'package:food/utilites/colors.dart';
import 'package:food/widget/icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppColor.mainBackgrondColor),
        ),
        SizedBox(
          height: 30,
          child: Row(
            children: [
              Wrap(
                children: List.generate(
                    5,
                    (index) => Icon(
                          Icons.star,
                          color: Colors.amber[600],
                          size: 17,
                        )),
              ),
              SizedBox(width: 25),
              Text("4.5"),
              SizedBox(width: 25),
              Text("128"),
              SizedBox(width: 20),
              Text("comments"),
            ],
          ),
        ),
        SizedBox(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: "Normal",
                color: AppColor.mainBackgrondColor,
                iconColor: AppColor.iconColor1,
              ),
              IconAndTextWidget(
                icon: Icons.location_on,
                text: "1.7km",
                color: AppColor.mainBackgrondColor,
                iconColor: AppColor.MainColor,
              ),
              IconAndTextWidget(
                icon: Icons.access_time_rounded,
                text: "32min",
                color: AppColor.mainBackgrondColor,
                iconColor: AppColor.iconColor2,
              ),
            ],
          ),
        )
      ],
    );
  }
}
