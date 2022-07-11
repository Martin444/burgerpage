import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../widgets/button_primary.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/star.svg',
                height: 45,
                color: Colors.grey[600],
              ),
              SvgPicture.asset(
                'assets/star.svg',
                height: 45,
                color: Colors.grey[600],
              ),
              SvgPicture.asset(
                'assets/star.svg',
                height: 45,
                color: Colors.grey[600],
              ),
              SvgPicture.asset(
                'assets/star.svg',
                height: 45,
                color: Colors.grey[600],
              ),
              SvgPicture.asset(
                'assets/star.svg',
                height: 45,
                color: Colors.grey[600],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Haz que tu voz se escuche y ayuda a otras personas a decidir',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          ButtonPrimary(
            title: 'Deja un comentario',
            onPressed: () {},
            load: false,
          )
        ],
      ),
    );
  }
}
