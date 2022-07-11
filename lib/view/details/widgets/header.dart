import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constans/fonts.dart';

class HeaderDetail extends StatefulWidget {
  const HeaderDetail({Key? key}) : super(key: key);

  @override
  State<HeaderDetail> createState() => _HeaderDetailState();
}

class _HeaderDetailState extends State<HeaderDetail> {
  @override
  Widget build(BuildContext context) {
    final sizedWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          height: 285,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.white,
                  ),
                ],
              ),
              Text(
                '3,1 km de tu ubicación',
                style: linkStyle1,
              )
            ],
          ),
        ),
        SizedBox(
          width: sizedWidth,
          child: Stack(
            children: const [
              ImageBanner(),
              InfoDetails(),
            ],
          ),
        ),
      ],
    );
  }
}

class InfoDetails extends StatelessWidget {
  const InfoDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 250 - 40,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/back.svg',
                  height: 30,
                  color: Colors.white,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/heart.svg',
                      height: 30,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                      'assets/share.svg',
                      height: 30,
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Burger Sublime',
                  style: titleStyleWithe,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/link.svg',
                        color: Colors.white,
                      ),
                      Text(
                        'Ver galería',
                        style: buttonStyle1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ImageBanner extends StatelessWidget {
  const ImageBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(40),
        bottomRight: Radius.circular(40),
      ),
      child: Container(
        height: 250,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/burger1.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurStyle: BlurStyle.outer,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
