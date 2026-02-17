import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_life/core/utility/appcolor/appcolor.dart';
import 'package:my_life/core/utility/text_style/app_text_style.dart';
import 'package:my_life/feature/bottom_navbar/home/res/home_res.dart';
import 'package:my_life/feature/bottom_navbar/home/widgets/book_card.dart';
import 'package:my_life/feature/bottom_navbar/home/widgets/feature_card.dart';
import 'package:my_life/feature/bottom_navbar/home/widgets/hadith_card.dart';
import 'package:my_life/feature/bottom_navbar/home/widgets/home_banner_card.dart';
import 'package:my_life/feature/bottom_navbar/home/widgets/namaz_time_tile.dart';
import 'package:my_life/feature/bottom_navbar/home/widgets/section_title.dart';
import 'package:my_life/feature/bottom_navbar/savara/screen/savara_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const HomeBannerCard(imageUrl: HomeRes.bannerImageUrl),
            const SizedBox(height: 22),
            const SectionTitle(title: 'Features'),
            const SizedBox(height: 12),
            SizedBox(
              height: 118,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: HomeRes.featureItems.length,
                separatorBuilder: (_, _) => const SizedBox(width: 10),
                itemBuilder: (_, int index) {
                  return FeatureCard(
                    item: HomeRes.featureItems[index],
                    onTap: index == 0
                        ? () {
                            Get.to(() => const SavaraScreen());
                          }
                        : null,
                  );
                },
              ),
            ),
            const SizedBox(height: 22),
            const SectionTitle(title: 'Popular Books'),
            const SizedBox(height: 12),
            SizedBox(
              height: 200,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: HomeRes.popularBooks.length,
                separatorBuilder: (_, _) => const SizedBox(width: 10),
                itemBuilder: (_, int index) {
                  return BookCard(book: HomeRes.popularBooks[index]);
                },
              ),
            ),
            const SizedBox(height: 22),
            const SectionTitle(title: 'Namaz Time'),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColor.cardBackground,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: AppColor.border),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Today's 5 Waqt Namaz Time",
                    style: AppTextStyle.body(
                      size: 13,
                      weight: FontWeight.w600,
                      color: AppColor.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ...HomeRes.namazTimes.map(
                    (item) => NamazTimeTile(item: item),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 22),
            const SectionTitle(title: 'Popular Hadith'),
            const SizedBox(height: 12),
            SizedBox(
              height: 214,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: HomeRes.popularHadith.length,
                itemBuilder: (_, int index) {
                  return HadithCard(item: HomeRes.popularHadith[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
