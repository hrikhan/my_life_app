import 'package:flutter/widgets.dart';
import 'package:my_life/core/utility/imagepath/imagepath.dart';
import 'package:my_life/feature/bottom_navbar/widgets/tab_placeholder.dart';

class QuranTabPage extends StatelessWidget {
  const QuranTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabPlaceholder(
      title: 'Quran Page',
      assetHint: ImagePath.quranBanner,
    );
  }
}
