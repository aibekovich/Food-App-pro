import 'package:savetime/Constans/colors_page.dart';
import 'package:savetime/Pages/MenuPage/food_list_page.dart';
import 'package:savetime/Pages/MenuPage/utils/plus_minus.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({
    Key? key,
    required this.text1,
    required this.text2,
    required this.image,
    required this.textsena,
  }) : super(key: key);

  final String text1;
  final String text2;
  final String textsena;
  final String image;

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          color: AppColors.silver,
        ),
        height: 75,
        width: MediaQuery.of(context).size.width * 0.95,
        child: Stack(
          children: [
            Row(
              children: [
                ClipOval(
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(38), // Image radius
                    child: Image.asset(
                      widget.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.text1,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.text2,
                      style: const TextStyle(color: AppColors.white),
                    )
                  ],
                ),
                const SizedBox(width: 18),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(widget.textsena),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              count++;
                            });
                          },
                          child: const PlusMinusButton(
                            btcolor: AppColors.red,
                            icon: Icon(Icons.remove),
                          ),
                        ),
                        const SizedBox(width: 5),
                        InkWell(
                          onTap: () {
                            setState(() {
                              count--;
                            });
                          },
                          child: const PlusMinusButton(
                            btcolor: AppColors.green,
                            icon: Icon(Icons.add),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
