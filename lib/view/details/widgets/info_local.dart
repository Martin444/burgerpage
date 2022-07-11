import 'package:flutter/material.dart';

import '../../../constans/fonts.dart';

class InfoLocal extends StatelessWidget {
  const InfoLocal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Información de Burger Sublime',
            style: titleStyleBlack,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem I want to create a button that will copy the text value when this button is pressed. I was looking for it but I found no information. How can I create automatic copying in flutter framework?',
            style: buttonStyle2,
          ),
        ],
      ),
    );
  }
}
