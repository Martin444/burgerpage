import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constans/fonts.dart';
import 'card_gallery.dart';

class GaleryDetails extends StatelessWidget {
  const GaleryDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Galería de Burger Sublime',
                style: titleStyleBlack,
              ),
              SvgPicture.asset(
                'assets/arrow-right.svg',
                height: 35,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                CardGallery(
                  title: 'Comida',
                  count: 22,
                ),
                CardGallery(
                  title: 'Bebidas',
                  count: 30,
                ),
                CardGallery(
                  title: 'Locales',
                  count: 12,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
