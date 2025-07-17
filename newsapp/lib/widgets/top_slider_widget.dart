import 'package:flutter/material.dart';
import 'package:newsapp/screens/category_screen.dart';

class TopWidget extends StatelessWidget {
  final String? shtext;
  final String? image;
  final String category;
  

  TopWidget(this.image,this.shtext,this.category);

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.height * 0.25;
    return GestureDetector(
      child: GestureDetector(
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>CategoryScreen(category)));
        },
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Stack(
            children: [
              Container(
                width: width,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('$image'),
                  ),
                ),
              ),
              Container(
                width: width,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withOpacity(0.4),
                ),
                alignment: Alignment.center,
                child: Text(
                  '$shtext',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
