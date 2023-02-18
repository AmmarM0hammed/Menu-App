import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menu/app/Controller/CategoryController.dart';

import 'CategoryCard.dart';

class MainCategory extends StatelessWidget {
  const MainCategory({super.key});

  @override
  Widget build(BuildContext context) {
    var tempList = [
      'بيتزا',
      'بركر',
      'بركر',
      'بركر',
      'بركر',
    ];
    return SizedBox(
      height: 105,
      width: double.infinity,
      child: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 0 , vertical: 20),
        child: GetBuilder<CategoryController>(
          init: CategoryController(),
          builder:(controller) => ListView.builder(
            physics:const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            reverse: true,
            itemCount: tempList.length,
            itemBuilder: (BuildContext contect , index){
              return  CategoryCard(
                title: "أطباق",
                image: "lib/assets/images/logo.png",
                isActive: false,
                index: index,
              );
            },
          ),
        ),
      ),
    );
  }
}
