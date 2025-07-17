class Articlemodels{
  final String? image;
  final String? newdes;
  final String? moredes;
  Articlemodels(this.image,this.newdes,this.moredes);
   factory Articlemodels.fromjson(Map<String,dynamic>json){//why we use factory constractor like this cuz we need a constractor to convert the map to object and the normal one cant do that for us why? cuz the normal one معتمد انو انت عارف البيانات بس بحالة الجيسون احنا فعليا بنعالج البيانات بعدين بنحفضها وفيش داعي ننشئ اشي جديد
     return Articlemodels(json['urlToImage'], json['title'], json['description']);
  }


}