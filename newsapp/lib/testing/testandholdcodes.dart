import 'package:flutter/material.dart';
import 'package:newsapp/models/getarticles.dart';
import 'package:newsapp/services/getnews.dart';
import 'package:newsapp/widgets/top_slider_widget.dart';
import 'package:newsapp/widgets/compleate_screen_widget.dart';
import 'package:dio/dio.dart';

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Articlemodels>articels=[];

  void initState(){
    super.initState();
    getgenralnews();

  }

  Future<void> getgenralnews()async{
    articels= await Getnews(Dio(),'الأردن').getnews();
    setState(() {
      articels=articels;
    });
  }

  List<Map<String, String>> topwid = [
    {
      'img': 'https://www.petra.gov.jo/upload/1689855906185.jpg',
      'shtext': 'افلام ومسلسلات',
      'category':'أفلام'

    },
    {
      'img':
      'https://arabisklondon.com/arabic/wp-content/uploads/2024/09/Diseno_sin_titulo-9.jpg-1.webp',
      'shtext': 'رياضة واخبارها',
      'category':'رياضة'

    },
    {
      'img': 'https://jornews.com/assets/2025-02-25/images/10_news_1740504725.jpg',
      'shtext': 'نبض البلد',
      'category':'إربد'
    },
    {
      'img': 'https://gludo.org/U/e/438716974_432272572855102_2472113979091762752_n.jpg',
      'shtext': 'الرياضيات الالكترونية',
      'category':' كأس العالم للرياضات الإلكترونية'
    },
    {
      'img':
      'https://global.unitednations.entermediadb.net/assets/mediadb/services/module/asset/downloads/preset/Libraries/Production+Library/080420-UN-Cuba-IPK-coronavirus.jpg/image1170x530cropped.jpg',
      'shtext': 'عن الصحة'
      ,'category':'الطب'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

        body:CustomScrollView(
          slivers: [
            SliverToBoxAdapter(//راح يخطرلك ليه هون ما استعملت سليفر ليست صح؟ سليفر ليست بستعملها بس مع الفيرتيكال الهوريزنتال ما بنفع معها تستعمل سليفر ليست تمام؟ فهون فعليا بسمحلي استعمل تشايلد واحط فيها نفس الاشي الي كنت حاطه بالكونتينر قبل حرفيا
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.20,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: topwid.length,
                    itemBuilder: (context, index) {
                      return TopWidget(topwid[index]['img']!, topwid[index]['shtext']!,topwid[index]['category']!);
                    },

                  ),
                )

            )
            ,articels.isEmpty?
            SliverToBoxAdapter(
              child: Center(

                child: Padding(

                  padding: EdgeInsets.all(20),
                  child: CircularProgressIndicator(

                    color: Colors.black,

                    strokeAlign: CircularProgressIndicator.strokeAlignCenter

                    ,strokeWidth: 10.0,
                  ),
                ),
              ),
            )
                :SliverList(

                delegate: SliverChildBuilderDelegate((context,index){
                  return  CompleateScreenWidget(articels[index].image ?? '',
                    articels[index].newdes ?? '',
                    articels[index].moredes ?? '',);

                }
                  ,
                  childCount: articels.length,

                ))],
        )
    );
  }
}
