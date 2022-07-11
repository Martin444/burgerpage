import 'package:flutter/material.dart';

import 'button_actions.dart';

class ActionsDetail extends StatelessWidget {
  const ActionsDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonAction(
            title: 'Ver Menú',
            path: 'assets/calendar.svg',
          ),
          ButtonAction(
            title: 'Llamar',
            path: 'assets/phone.svg',
          ),
          ButtonAction(
            title: 'Como Llegar',
            path: 'assets/map.svg',
          ),
          ButtonAction(
            title: 'Valorar',
            path: 'assets/star.svg',
          ),
        ],
      ),
    );
  }
}
