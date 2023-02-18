import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menu/app/Function/Config.dart';

class Navbar extends StatelessWidget {
  final bool showBackBtn;

  const Navbar({
    super.key,
    required this.showBackBtn,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0 ,vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            (showBackBtn) ? CardButton(context) : BackBtn(context),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Text(
                  ConfigApp.appName,
                  style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
                ),
                Image.asset(
                  'lib/assets/images/logo.png',
                  width: 50.0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  ClipRRect CardButton(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: Theme.of(context).primaryColor,
        elevation: 20,
        child: InkWell(
          onTap: () {
          },
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: const Padding(
              padding: EdgeInsets.all(9),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
  // ignore: non_constant_identifier_names
  InkWell BackBtn(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

