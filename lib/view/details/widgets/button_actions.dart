import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constans/fonts.dart';

// ignore: must_be_immutable
class ButtonAction extends StatelessWidget {
  String? title;
  String? path;
  ButtonAction({
    Key? key,
    this.title,
    this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 12,
              ),
            ],
          ),
          child: TextButton(
            onPressed: () {},
            child: SvgPicture.asset(
              path!,
              color: Colors.red,
              height: 30,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title!,
          style: buttonStyle2,
        ),
      ],
    );
  }
}
