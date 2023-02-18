import "package:flutter/material.dart";

class SeeAll extends StatelessWidget {
  const SeeAll({super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback  onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          InkWell(
            onTap: () => onTap,
            child: Text(
              "مشاهدة الكل",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
           Text(
            text,
            style:const TextStyle(
                fontSize: 15, fontWeight: FontWeight.w300, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
