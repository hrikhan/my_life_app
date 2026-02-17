import 'package:flutter/material.dart';
import 'package:my_life/core/utility/appcolor/appcolor.dart';
import 'package:my_life/core/utility/text_style/app_text_style.dart';

class HomeBannerCard extends StatelessWidget {
  const HomeBannerCard({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: AppColor.surface,
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child;
              }
              return const Center(child: CircularProgressIndicator());
            },
            errorBuilder: (_, _, _) {
              return Container(color: AppColor.cardBackground);
            },
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[Color(0xA6000000), Color(0x20000000)],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Text(
                'Learn. Reflect. Practice.',
                style: AppTextStyle.heading(
                  size: 19,
                  weight: FontWeight.w700,
                  color: AppColor.surface,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
