import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({
    required this.image,
    Key? key,
    this.onTap,
  }) : super(key: key);

  final String image;

  final dynamic onTap;
  // final dynam size1 = MediaQuery.of(context).size.width * 0.9;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10), // Image border
        child: SizedBox.fromSize(
          size: Size(MediaQuery.of(context).size.width * 0.9, 160), // Image radius
          child: InkWell(
            onTap: onTap,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
