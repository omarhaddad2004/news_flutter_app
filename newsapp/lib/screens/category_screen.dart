import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import 'package:newsapp/widgets/check_api_data_and_give_info.dart';


class CategoryScreen extends StatelessWidget {
  final String category;

  CategoryScreen(this.category);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),

      ),
      body: CustomScrollView(
        slivers: [
          CheckApiData(category)
        ],
      )
    );
  }
}
