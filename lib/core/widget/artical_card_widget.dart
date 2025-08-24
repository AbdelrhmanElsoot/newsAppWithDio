import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app_learning_dio/core/styles/app_text_style.dart';
import 'package:news_app_learning_dio/core/widget/spacer_width.dart';

class ArticalCardWidget extends StatelessWidget {
  final String articalTitle;
  final String authorName;
  final String articalDate;
  final String? imageUrl;
  const ArticalCardWidget({
    super.key,
    required this.articalTitle,
    required this.authorName,
    required this.articalDate,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 24),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
            ),
            SpacerWidth(width: 5),
            SizedBox(
              width: 112,
              height: 70,
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
          ],
        ),
      ),
    );
  }
}
