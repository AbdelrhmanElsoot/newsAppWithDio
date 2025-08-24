import 'package:flutter/material.dart';
import 'package:news_app_learning_dio/core/styles/app_color.dart';
import 'package:news_app_learning_dio/core/styles/app_text_style.dart';

class CategoryView extends StatelessWidget {
  final String title;
  const CategoryView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.whiteColor,
          elevation: 0,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(30),
            side: BorderSide(color: AppColor.homeAppBarColor, width: 2),
          ),
          overlayColor: AppColor.homeAppBarColor,
          shadowColor: AppColor.whiteColor,
        ),
        child: Text(title, style: AppTextStyle.homeCategoryText),
      ),
    );
  }
}
