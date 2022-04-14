import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:savetime/Constans/colors_page.dart';
import 'package:savetime/Pages/caffePage/utils/caffe_image.dart';
import 'package:savetime/Pages/caffePage/utils/name_caffes.dart';
import 'package:flutter/material.dart';

import '../MenuPage/food_list_page.dart';

class CaffePage extends StatefulWidget {
  const CaffePage({Key? key}) : super(key: key);

  @override
  _CaffePageState createState() => _CaffePageState();
}

class _CaffePageState extends State<CaffePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.search)],
        title: const Text('Caffes'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 10),
            Column(
              children: [
                Images(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const FoodListPage()),
                      ),
                    );
                  },
                  image: 'assets/images/ema-bur.jpg',
                ),
                const SizedBox(
                  height: 10,
                ),
                const NameCaffes(
                  text1: 'Ema Burger',
                  text2: 'K. Datka 276/4',
                ),
                const SizedBox(height: 20),
                Images(
                  onTap: () {},
                  image: 'assets/images/Navat.jpg',
                ),
                const SizedBox(
                  height: 10,
                ),
                const NameCaffes(
                  text1: 'Чайкана NAVAT',
                  text2: 'Ленин 215а                ',
                ),
                const SizedBox(height: 20),
                Images(
                  onTap: () {},
                  image: 'assets/images/Uluk-ata.jpeg',
                ),
                const SizedBox(
                  height: 10,
                ),
                const NameCaffes(
                  text1: 'Улук-Ата',
                  text2: 'Гагарин 115а',
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: const GNav(
        backgroundColor: Colors.orange,
        gap: 10,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Домой',
          ),
          GButton(
            icon: Icons.euro_rounded,
            text: 'Акция',
          ),
          GButton(
            icon: Icons.settings,
            text: 'Настройка',
          ),
        ],
      ),
    );
  }
}
