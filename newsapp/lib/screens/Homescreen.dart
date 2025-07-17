import 'package:flutter/material.dart';
import 'package:newsapp/models/getarticles.dart';
import 'package:newsapp/services/getnews.dart';
import 'package:newsapp/widgets/top_slider_widget.dart';
import 'package:newsapp/widgets/compleate_screen_widget.dart';
import 'package:dio/dio.dart';
import 'package:newsapp/widgets/check_api_data_and_give_info.dart';

class Homescreen extends StatelessWidget {
  List<Map<String, String>> topwid = [
    {
      'img': 'https://www.petra.gov.jo/upload/1689855906185.jpg',
      'shtext': 'افلام ومسلسلات',
      'category': 'أفلام'
    },
    {
      'img':
      'https://arabisklondon.com/arabic/wp-content/uploads/2024/09/Diseno_sin_titulo-9.jpg-1.webp',
      'shtext': 'رياضة واخبارها',
      'category': 'رياضة'
    },
    {
      'img':
      'https://jornews.com/assets/2025-02-25/images/10_news_1740504725.jpg',
      'shtext': 'نبض البلد',
      'category': 'إربد'
    },
    {
      'img':
      'https://gludo.org/U/e/438716974_432272572855102_2472113979091762752_n.jpg',
      'shtext': 'الرياضيات الالكترونية',
      'category': ' كأس العالم للرياضات الإلكترونية'
    },
    {
      'img':
      'https://global.unitednations.entermediadb.net/assets/mediadb/services/module/asset/downloads/preset/Libraries/Production+Library/080420-UN-Cuba-IPK-coronavirus.jpg/image1170x530cropped.jpg',
      'shtext': 'عن الصحة',
      'category': 'الطب'
    },
    {
      'img':
      'https://play-lh.googleusercontent.com/9v08ai07I8aoFLj5M-90nzWPpvyNzOVgA2ZWF9avdW7oS8L9YqF9trVI44SUn2qGTA0=w240-h480-rw',
      'shtext': 'Temu',
      'category': 'temu'
    },
    {
      'img':
      'https://1000logos.net/wp-content/uploads/2021/05/Shein-logo.png',
      'shtext': 'Shein',
      'category': 'Shein'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        backgroundColor: Colors.white,
        title: RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 20),
            children: [
              TextSpan(
                text: 'News',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: 'Cloud',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.20,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: topwid.length,
                itemBuilder: (context, index) {
                  return TopWidget(
                    topwid[index]['img']!,
                    topwid[index]['shtext']!,
                    topwid[index]['category']!,
                  );
                },
              ),
            ),
          ),

            CheckApiData('الأردن'),
          ],
      ),
    );
  }
}
