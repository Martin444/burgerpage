import 'package:flutter/material.dart';

import '../../../constans/fonts.dart';

class InfoOpen extends StatelessWidget {
  const InfoOpen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 22,
      ),
      child: Row(
        children: [
          Text(
            'Abierto',
            style: textGreenStyle1,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            '6:00 p.m. - 3:00 a.m.',
            style: textNormalStyle1,
          ),
        ],
      ),
    );
  }
}
