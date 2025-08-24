import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app_learning_dio/core/styles/app_text_style.dart';
import 'package:news_app_learning_dio/core/widget/spacer_height.dart';

class MainHomeArticalWidget extends StatelessWidget {
  final String articalTitle;
  final String authorName;
  final String articalDate;
  final String? imageUrl;
  const MainHomeArticalWidget({
    super.key,
    required this.articalTitle,
    required this.authorName,
    required this.articalDate,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 206,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(8.0),
              child: CachedNetworkImage(
                imageUrl:
                    imageUrl ??
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCxDJzzWhvKyM0WwoCTz0Oy50O0TQnUBZmnA&s",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SpacerHeight(height: 8),
          Text(
            articalTitle,
            style: AppTextStyle.homeNewsTitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "${authorName} . ${articalDate}",
            style: AppTextStyle.newsDescriptionText,
          ),
        ],
      ),
    );
  }
}
