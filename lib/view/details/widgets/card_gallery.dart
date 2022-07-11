import 'package:flutter/material.dart';

import '../../../constans/fonts.dart';

class CardGallery extends StatelessWidget {
  String? title;
  int? count;
  CardGallery({
    Key? key,
    required this.title,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 180,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/burger1.jpeg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(48, 0, 0, 0),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title!,
              style: titleStyleWithe2,
            ),
            Text(
              '${count!} fotos',
              style: linkStyle1,
            ),
          ],
        ),
      ),
    );
  }
}
