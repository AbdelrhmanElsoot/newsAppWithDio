import 'package:flutter/material.dart';
import 'package:news_app_learning_dio/core/styles/app_color.dart';
import 'package:news_app_learning_dio/core/styles/app_text_style.dart';
import 'package:news_app_learning_dio/core/widget/artical_card_widget.dart';
import 'package:news_app_learning_dio/core/widget/spacer_height.dart';
import 'package:news_app_learning_dio/features/home_screen/models/top_headline_model.dart';
import 'package:news_app_learning_dio/features/home_screen/services/home_screen_services.dart';
import 'package:news_app_learning_dio/features/home_screen/widget/category_view.dart';
import 'package:news_app_learning_dio/features/home_screen/widget/main_home_artical_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body: FutureBuilder(
        future: HomeScreenServices().getTopHeadlineArticle(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text("Some Thing Went Wrong"));
          }
          if (snapshot.hasData) {
            TopHeadlineModel topHeadlineModel =
                snapshot.data! as TopHeadlineModel;
            return Column(
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
                  articalTitle: topHeadlineModel.articles![0].title ?? "",
                  authorName: topHeadlineModel.articles![0].author ?? "",
                  articalDate: topHeadlineModel.articles![0].publishedAt
                      .toString(),
                  imageUrl: topHeadlineModel.articles![0].urlToImage,
                ),
                SpacerHeight(height: 18),
                Expanded(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: topHeadlineModel.articles!.length,
                    itemBuilder: (context, index) {
                      Article articles = topHeadlineModel.articles![index];

                      return ArticalCardWidget(
                        articalTitle: articles.title ?? "",
                        authorName: articles.author ?? "",
                        articalDate: articles.publishedAt.toString() ?? "",
                        imageUrl: articles.urlToImage,
                      );
                    },
                  ),
                ),
              ],
            );
          }
          return Center(child: Text('No Data'));
        },
      ),
    );
  }
}
