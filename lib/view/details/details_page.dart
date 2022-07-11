import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:robintest/view/details/widgets/gallery.dart';
import 'package:robintest/view/details/widgets/header.dart';
import 'package:robintest/widgets/button_primary.dart';

import '../../constans/fonts.dart';
import 'widgets/action_details.dart';
import 'widgets/info_local.dart';
import 'widgets/info_open.dart';
import 'widgets/review_card.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderDetail(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(0),
              physics: const BouncingScrollPhysics(),
              children: const [
                SizedBox(
                  height: 20,
                ),
                InfoOpen(),
                SizedBox(
                  height: 20,
                ),
                ActionsDetail(),
                SizedBox(
                  height: 20,
                ),
                ReviewCard(),
                SizedBox(
                  height: 20,
                ),
                GaleryDetails(),
                SizedBox(
                  height: 20,
                ),
                InfoLocal(),
                SizedBox(
                  height: 60,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
