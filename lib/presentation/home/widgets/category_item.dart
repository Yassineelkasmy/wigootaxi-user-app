import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);
  final String icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final raduis = Radius.circular(15);
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                topLeft: raduis,
                bottomLeft: raduis,
                bottomRight: raduis,
              ),
            ),
            child: Image.asset(
              'assets/icons/$icon.png',
              height: 36,
              width: 36,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
