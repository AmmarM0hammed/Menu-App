import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menu/app/Controller/CategoryController.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;
  late final bool isActive;
  final int index;

  CategoryCard(
      {super.key,
      required this.title,
      required this.image,
      required this.isActive,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return GetX<CategoryController>(
      init: CategoryController(),
      builder: (controller) => Padding(
        padding: const EdgeInsets.all(5.0),
        child: InkWell(
          onTap: () {
            controller.setIndex(index);
          },
          borderRadius: BorderRadius.circular(13),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              (index == controller.cruuntIndex.value)
                  ? BoxShadow(
                      offset: const Offset(0, 0),
                      spreadRadius: -15,
                      blurRadius: 10,
                      color: Theme.of(context).primaryColor,
                    )
                  : const BoxShadow(
                      offset:  Offset(0, 0),
                      spreadRadius: -12,
                      blurRadius: 12,
                      color: Colors.black,
                    )
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Container(
                constraints: const BoxConstraints(minWidth: 160.0),
                height: 39,
                decoration: BoxDecoration(
                  color: (index == controller.cruuntIndex.value)
                      ? Theme.of(context).primaryColor
                      : Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          title,
                          style: TextStyle(
                              color: (index == controller.cruuntIndex.value)
                                  ? Colors.white
                                  : Theme.of(context).primaryColor,
                              fontSize: 17,
                              fontWeight:
                                  (index == controller.cruuntIndex.value)
                                      ? FontWeight.w500
                                      : FontWeight.w500),
                        ),
                      ),
                      Image.asset(
                        image,
                        width: 35.0,
                        color: (index == controller.cruuntIndex.value)
                            ? Colors.white
                            : Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
