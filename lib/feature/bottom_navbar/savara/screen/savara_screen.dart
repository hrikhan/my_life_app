import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_life/core/utility/appcolor/appcolor.dart';
import 'package:my_life/core/utility/text_style/app_text_style.dart';
import 'package:my_life/feature/bottom_navbar/savara/res/savara_res.dart';
import 'package:my_life/feature/bottom_navbar/savara/screen/savara_details_screen.dart';
import 'package:my_life/feature/bottom_navbar/savara/widgets/savara_list_tile.dart';

class SavaraScreen extends StatelessWidget {
  const SavaraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        foregroundColor: AppColor.surface,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: Text(
          'Savara',
          style: AppTextStyle.heading(
            size: 20,
            weight: FontWeight.w700,
            color: AppColor.surface,
          ),
        ),
        leadingWidth: 64,
        leading: Padding(
          padding: const EdgeInsets.only(left: 14, top: 8, bottom: 8),
          child: InkWell(
            borderRadius: BorderRadius.circular(100),
            onTap: Get.back,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.surface,
                border: Border.all(color: AppColor.border),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 18,
                color: AppColor.textPrimary,
              ),
            ),
          ),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
        itemCount: SavaraRes.savaraList.length,
        separatorBuilder: (_, _) => const SizedBox(height: 10),
        itemBuilder: (_, int index) {
          final item = SavaraRes.savaraList[index];

          return SavaraListTile(
            item: item,
            onTap: () {
              Get.to(() => SavaraDetailsScreen(initialPage: item.initialPage));
            },
          );
        },
      ),
    );
  }
}
