import 'package:flutter/widgets.dart';
import 'package:my_life/core/utility/imagepath/imagepath.dart';
import 'package:my_life/feature/bottom_navbar/widgets/tab_placeholder.dart';

class HadithTabPage extends StatelessWidget {
  const HadithTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabPlaceholder(
      title: 'Hadith Page',
      assetHint: ImagePath.hadithBanner,
    );
  }
}
