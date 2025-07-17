import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:newsapp/services/getnews.dart';
import 'package:newsapp/models/getarticles.dart';
import 'package:flutter/cupertino.dart';
import 'package:newsapp/widgets/compleate_screen_widget.dart';
final Dio dio = Dio();

class CheckApiData extends StatelessWidget {
  final String category;

  CheckApiData(this.category);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future:Getnews(dio,category).getnews(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SliverToBoxAdapter(
              child: Center(

                child: Padding(

                  padding: EdgeInsets.all(20),
                  child: CircularProgressIndicator(


                    color: Colors.black,

                    strokeAlign: CircularProgressIndicator.strokeAlignCenter

                    , strokeWidth: 10.0,
                  ),
                ),
              ),
            );
          }
          else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Center(
                  child: Text('error with data')
              ),
            );
          }
          else if (snapshot.data!.isEmpty) {
            return SliverToBoxAdapter(
              child: Center(
                  child: Text('NO DATA FOR NOW')
              ),
            );
          }

          final articles = snapshot.data!;
          return SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => CompleateScreenWidget(
                articles[index].image ?? '',
                articles[index].newdes ?? '',
                articles[index].moredes ?? '',
              ),
              childCount: articles.length,

                  ),);


        });
  }
}
