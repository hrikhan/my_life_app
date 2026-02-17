import 'package:flutter/material.dart';
import 'package:my_life/core/utility/appcolor/appcolor.dart';
import 'package:my_life/core/utility/text_style/app_text_style.dart';
import 'package:my_life/feature/bottom_navbar/home/res/data_model/namaz_time_item_model.dart';

class NamazTimeTile extends StatelessWidget {
  const NamazTimeTile({super.key, required this.item});

  final NamazTimeItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.surface,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            item.prayerName,
            style: AppTextStyle.body(
              size: 14,
              weight: FontWeight.w600,
              color: AppColor.textPrimary,
            ),
          ),
          Text(
            item.time,
            style: AppTextStyle.body(
              size: 14,
              weight: FontWeight.w700,
              color: AppColor.primary,
            ),
          ),
        ],
      ),
    );
  }
}
