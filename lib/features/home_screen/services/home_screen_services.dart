import 'dart:developer';
import 'package:news_app_learning_dio/core/constants/constants.dart';
import 'package:news_app_learning_dio/core/networking/api_end_point.dart';
import 'package:news_app_learning_dio/core/networking/dio_helper.dart';
import 'package:news_app_learning_dio/features/home_screen/models/top_headline_model.dart';

class HomeScreenServices {
  getTopHeadlineArticle() async {
    try {
      final response = await DioHeler.getRequest(
        endPoint: ApiEndPoint.topHeadlinesEndPoint,
        query: {'country': 'us', 'apiKey': Constants.newsKey},
      );

      if (response.statusCode == 200) {
        TopHeadlineModel topHeadLinesModel = TopHeadlineModel.fromjson(
          response.data,
        );
        log(topHeadLinesModel.totalResult.toString());

        return topHeadLinesModel;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
