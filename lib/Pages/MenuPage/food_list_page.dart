import 'package:savetime/Pages/MenuPage/utils/menu_page.dart';
import 'package:flutter/material.dart';

class FoodListPage extends StatefulWidget {
  const FoodListPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FoodListPage> createState() => _FoodListPageState();
}

int count = 0;

class _FoodListPageState extends State<FoodListPage> {
  // int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ema Burger'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(
            height: 20,
          ),
          MenuPage(
            // onTap1: () {},
            // onTap2: () {},
            textsena: 'KGS 170.0',
            text1: 'Шаурма',
            text2: 'Говяжье мясо, салат, соус',
            image: 'assets/images/shaurma.jpg',
          ),
          SizedBox(
            height: 20,
          ),
          MenuPage(
            // onTap1: () {},
            // onTap2: () {},
            textsena: 'KGS 140.0',
            text1: 'Шаурдок',
            text2: 'Говяжье мясо, салат, соус',
            image: 'assets/images/shaurma.jpg',
          ),
        ],
      ),
      bottomNavigationBar: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(
                      // color: Colors.red[500],
                      ),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Center(
                  child: Text(
                'Заказ: ${count.toString()}',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )),
              height: 50,

              // width: MediaQuery.of(context).size.width * 0.85,
            ),
          ),
        ],
      ),
    );
  }
}
