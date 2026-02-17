import 'package:flutter/material.dart';
import 'package:my_life/core/utility/appcolor/appcolor.dart';
import 'package:my_life/core/utility/text_style/app_text_style.dart';
import 'package:my_life/feature/bottom_navbar/home/res/data_model/hadith_item_model.dart';

class HadithCard extends StatelessWidget {
  const HadithCard({super.key, required this.item});

  final HadithItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: AppColor.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColor.border),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 120,
            width: double.infinity,
            child: Image.network(
              item.imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) =>
                  Container(color: AppColor.cardBackground),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  item.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.heading(
                    size: 15,
                    weight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  item.narrator,
                  style: AppTextStyle.body(size: 12, color: AppColor.warning),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
