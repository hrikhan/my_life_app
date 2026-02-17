import 'package:flutter/material.dart';
import 'package:my_life/core/utility/icon_path/iconpath.dart';
import 'package:my_life/core/utility/imagepath/imagepath.dart';
import 'package:my_life/feature/bottom_navbar/res/data_model/tab_item_model.dart';

class BottomNavbarRes {
  BottomNavbarRes._();

  static const List<TabItemModel> tabs = <TabItemModel>[
    TabItemModel(
      label: 'Home',
      icon: Icons.home_rounded,
      iconAssetPath: IconPath.home,
      imageAssetPath: ImagePath.homeBanner,
    ),
    TabItemModel(
      label: 'Courses',
      icon: Icons.menu_book_rounded,
      iconAssetPath: IconPath.courses,
      imageAssetPath: ImagePath.coursesBanner,
    ),
    TabItemModel(
      label: 'Quran',
      icon: Icons.auto_stories_rounded,
      iconAssetPath: IconPath.quran,
      imageAssetPath: ImagePath.quranBanner,
    ),
    TabItemModel(
      label: 'Hadith',
      icon: Icons.library_books_rounded,
      iconAssetPath: IconPath.hadith,
      imageAssetPath: ImagePath.hadithBanner,
    ),
  ];
}
