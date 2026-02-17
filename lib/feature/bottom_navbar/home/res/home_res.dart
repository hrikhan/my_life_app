import 'package:flutter/material.dart';
import 'package:my_life/core/utility/appcolor/appcolor.dart';
import 'package:my_life/feature/bottom_navbar/home/res/data_model/book_item_model.dart';
import 'package:my_life/feature/bottom_navbar/home/res/data_model/feature_item_model.dart';
import 'package:my_life/feature/bottom_navbar/home/res/data_model/hadith_item_model.dart';
import 'package:my_life/feature/bottom_navbar/home/res/data_model/namaz_time_item_model.dart';

class HomeRes {
  HomeRes._();

  static const String appName = 'MyLife';

  static const String bannerImageUrl =
      'https://images.unsplash.com/photo-1564769625905-50e93615e769?auto=format&fit=crop&w=1200&q=80';

  static const List<FeatureItemModel> featureItems = <FeatureItemModel>[
    FeatureItemModel(
      title: 'Savara Learning',
      icon: Icons.school_rounded,
      iconColor: AppColor.primary,
    ),
    FeatureItemModel(
      title: 'Popular Speech',
      icon: Icons.record_voice_over_rounded,
      iconColor: AppColor.accentGold,
    ),
    FeatureItemModel(
      title: 'Duya with Fazilat',
      icon: Icons.auto_awesome_rounded,
      iconColor: AppColor.success,
    ),
  ];

  static const List<BookItemModel> popularBooks = <BookItemModel>[
    BookItemModel(
      title: 'Riyad-us-Saliheen',
      author: 'Imam Nawawi',
      imageUrl:
          'https://images.unsplash.com/photo-1544947950-fa07a98d237f?auto=format&fit=crop&w=800&q=80',
    ),
    BookItemModel(
      title: 'The Sealed Nectar',
      author: 'Safiur Rahman',
      imageUrl:
          'https://images.unsplash.com/photo-1512820790803-83ca734da794?auto=format&fit=crop&w=800&q=80',
    ),
    BookItemModel(
      title: 'Fortress of the Muslim',
      author: 'Saeed Al-Qahtani',
      imageUrl:
          'https://images.unsplash.com/photo-1495446815901-a7297e633e8d?auto=format&fit=crop&w=800&q=80',
    ),
    BookItemModel(
      title: 'Ar-Raheeq Al-Makhtum',
      author: 'Safiur Rahman',
      imageUrl:
          'https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?auto=format&fit=crop&w=800&q=80',
    ),
  ];

  static const List<NamazTimeItemModel> namazTimes = <NamazTimeItemModel>[
    NamazTimeItemModel(prayerName: 'Fajr', time: '5:08 AM'),
    NamazTimeItemModel(prayerName: 'Dhuhr', time: '12:21 PM'),
    NamazTimeItemModel(prayerName: 'Asr', time: '4:02 PM'),
    NamazTimeItemModel(prayerName: 'Maghrib', time: '5:44 PM'),
    NamazTimeItemModel(prayerName: 'Isha', time: '7:10 PM'),
  ];

  static const List<HadithItemModel> popularHadith = <HadithItemModel>[
    HadithItemModel(
      title: 'Actions are judged by intentions.',
      narrator: 'Sahih al-Bukhari',
      imageUrl:
          'https://images.unsplash.com/photo-1507842217343-583bb7270b66?auto=format&fit=crop&w=800&q=80',
    ),
    HadithItemModel(
      title: 'The best among you are those with best character.',
      narrator: 'Sahih al-Bukhari',
      imageUrl:
          'https://images.unsplash.com/photo-1529156069898-49953e39b3ac?auto=format&fit=crop&w=800&q=80',
    ),
    HadithItemModel(
      title: 'Whoever shows mercy will be shown mercy.',
      narrator: 'Jami at-Tirmidhi',
      imageUrl:
          'https://images.unsplash.com/photo-1455885666463-9f41a4524c2b?auto=format&fit=crop&w=800&q=80',
    ),
  ];
}
