import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class CompleateScreenWidget extends StatelessWidget {
  final String? image;
  final String? newdes;
  final String? moredes;

  CompleateScreenWidget(this.image,this.newdes,this.moredes);



  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            height: 200,
            alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('$image'),
            ),
          )
          )
          ,SizedBox(height: hight*0.03,)//بدل ما استعمل ميديا كويري على كل وحدة احسن اعملها فاريبل واستعملها بكل مكان احسن
          ,Text(
              '$newdes',
            style: TextStyle(fontWeight: FontWeight.bold
            ,fontSize: 16),
          )
          ,Text(
            '$moredes',
            style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 14),
          )
          ,SizedBox(height: hight*0.03,)
        ],
      ),
    );
  }
}
