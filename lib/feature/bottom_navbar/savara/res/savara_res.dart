import 'package:my_life/feature/bottom_navbar/savara/res/data_model/savara_item_model.dart';

class SavaraRes {
  SavaraRes._();

  static const List<SavaraItemModel> savaraList = <SavaraItemModel>[
    SavaraItemModel(
      title: 'Arabic Letters',
      subtitle: 'ا ب ت ث - Alif, Ba, Ta, Tha',
      initialPage: 0,
    ),
    SavaraItemModel(
      title: 'Tajid',
      subtitle: 'Basic tajid rules and pronunciation',
      initialPage: 1,
    ),
  ];
}
