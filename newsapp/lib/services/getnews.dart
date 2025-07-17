
import 'package:dio/dio.dart';
import 'package:newsapp/models/getarticles.dart';

class Getnews{
  final String category;

  final Dio dio;
  Getnews(this.dio,this.category);
   Future<List<Articlemodels>> getnews() async{
    Response  response=await dio.get('https://newsapi.org/v2/everything?q=$category&language=ar&apiKey=313c3842b39f4c88b50cd0d96eb8605f');
    Map<String,dynamic> jsondata=response.data;
    List<dynamic> articlesjson = jsondata['articles'];

    List<Articlemodels> articles = [];

    for (var json in articlesjson) {
      articles.add(Articlemodels.fromjson(json));
    }
    return articles;






  }

}
