import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app_learning_dio/core/styles/app_color.dart';

class AppTextStyle {
  static final TextStyle homeAppBarTitle = GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColor.blackColor,
  );
  static final TextStyle homeCategoryText = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColor.blackColor,
  );
  static final TextStyle homeNewsTitle = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColor.blackColor,
  );
  static final TextStyle homeNewsAuthorName = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColor.darkGreyColor,
  );
  static final TextStyle searchTextStyle = GoogleFonts.inter(
    fontSize: 17,
    fontWeight: FontWeight.normal,
    color: AppColor.blackColor,
  );
  static final TextStyle searchCancelButton = GoogleFonts.inter(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColor.canclSearchButton,
  );
  static final TextStyle newsDescriptionText = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColor.blackColor,
  );
}
