import 'package:flutter/material.dart';
import 'package:news_app_learning_dio/core/widget/artical_card_widget.dart';

class ArticalList extends StatelessWidget {
  final String articalTitle;
  final String authorName;
  final String articalDate;
  final String? imageUrl;
  const ArticalList({
    super.key,
    required this.articalTitle,
    required this.authorName,
    required this.articalDate,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, inedx) {
        return ArticalCardWidget(
          articalTitle: articalTitle,
          authorName: authorName,
          articalDate: articalDate,
          imageUrl: imageUrl,
        );
      },
    );
  }
}
