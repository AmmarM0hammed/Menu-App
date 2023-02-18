import 'package:flutter/material.dart';
import 'package:menu/global.dart';

class MainFoodCard extends StatelessWidget {
  const MainFoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      InkWell(
        onTap: (){},
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(24, 50, 50, 50),
                  blurRadius: 15,
                  offset: Offset(0, 0),
                ),
              ],
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 93,
                    height: 93,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 15,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        './lib/assets/images/pizza.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 2 , bottom: 20 ),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              "بالخضار مع الصلصة بيتزا",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: "Tajawal",
                                fontWeight: FontWeight.w500,
                              ),
                              maxLines: 2,
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "بيتزا خضار مع مع صلصة خاصة و جبنة الموزريلا و جبن الشيدر تقدم مع بيبسي مع الفنكر ... ",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0x89000000),
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              textDirection: TextDirection.rtl,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Positioned(
        bottom: 1,
        right: 1,
        child: InkWell(
          borderRadius:const BorderRadius.only(
             topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(16),
          ),
          onTap: (){},
          child: Container(
            width: 38,
            height: 27,
            decoration:  BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(16),
              ),
              color: Theme.of(context).primaryColor,
             
            ),
             child:const Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              )
          ),
        ),
      )
    ]);
  }
}
