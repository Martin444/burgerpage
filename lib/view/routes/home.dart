import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:robintest/constans/fonts.dart';
import 'package:robintest/view/details/details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final moreWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const DetailsPage(),
          MenuBar(moreWidth: moreWidth),
        ],
      ),
    );
  }
}

class MenuBar extends StatelessWidget {
  const MenuBar({
    Key? key,
    required this.moreWidth,
  }) : super(key: key);

  final double moreWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MenuItem(
            title: 'Buscar',
            path: 'assets/search.svg',
          ),
          MenuItem(
            title: 'Ordenes',
            path: 'assets/shopping-cart.svg',
          ),
          MenuItem(
            title: 'Home',
            path: 'assets/home.svg',
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(
                  'https://yt3.ggpht.com/ytc/AKedOLQylqFTtERgMcChh2CwtrpeSeTSTEAqf8Vb9D15xw=s88-c-k-c0x00ffffff-no-rj',
                ),
              ),
              Text(
                'Perfil',
                style: linkStyle1,
              )
            ],
          ),
          SvgPicture.asset(
            'assets/menu.svg',
            height: 40,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  String? title;
  String? path;

  MenuItem({
    Key? key,
    this.title,
    this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            path!,
            height: 35,
            color: Colors.white,
          ),
          Text(
            title!,
            style: linkStyle1,
          )
        ],
      ),
    );
  }
}
