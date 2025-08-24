import 'package:flutter/material.dart';
import 'package:news_app_learning_dio/core/styles/app_color.dart';
import 'package:news_app_learning_dio/core/styles/app_text_style.dart';
import 'package:news_app_learning_dio/core/widget/artical_list.dart';
import 'package:news_app_learning_dio/core/widget/spacer_height.dart';
import 'package:news_app_learning_dio/features/home_screen/widget/category_view.dart';
import 'package:news_app_learning_dio/features/home_screen/widget/main_home_artical_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.homeAppBarColor,
        title: Text("Explore", style: AppTextStyle.homeAppBarTitle),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: AppColor.blackColor),
          ),
        ],
      ),
      body: Column(
        children: [
          SpacerHeight(height: 12),
          SizedBox(
            height: 35,
            child: Padding(
              padding: const EdgeInsets.only(left: 24),
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                children: [
                  CategoryView(title: 'Business'),
                  CategoryView(title: 'Entertainment'),
                  CategoryView(title: 'General'),
                  CategoryView(title: 'Health'),
                  CategoryView(title: 'Science'),
                  CategoryView(title: 'Sports'),
                  CategoryView(title: 'Technology'),
                ],
              ),
            ),
          ),
          SpacerHeight(height: 16),
          MainHomeArticalWidget(
            articalTitle: 'Test Title ',
            authorName: 'Abdelrhman Ahemd',
            articalDate: '20/4/2025',
            imageUrl: "https://www.bblf.bg/img/default-news-image.png",
          ),
          SpacerHeight(height: 18),
          Expanded(
            child: ArticalList(
              articalTitle: 'artical title',
              authorName: 'author name',
              articalDate: 'date',
            ),
          ),
        ],
      ),
    );
  }
}
