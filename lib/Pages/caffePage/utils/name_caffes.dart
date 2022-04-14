// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NameCaffes extends StatefulWidget {
  const NameCaffes({Key? key, required this.text1, required this.text2})
      : super(key: key);

  final String text1;
  final String text2;

  @override
  _NameCaffesState createState() => _NameCaffesState();
}

class _NameCaffesState extends State<NameCaffes> {
  bool saved = false;
  bool thumb = true;

  // final String text1;
  // final String text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                widget.text1,
                style: const TextStyle(
                    fontSize: 22,
                    // fontWeight: FontWeight.bold,
                    fontFamily: 'SF Disply Medium',
                    color: Colors.white),
              ),
              Text(
                widget.text2,
                style: const TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 128, 123, 123)),
              )
            ],
          ),
          const Spacer(),

          const Icon(
            Icons.location_on,
            color: Colors.white,
          ),
          const Text(
            '10\' м',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          const SizedBox(width: 10),

          // const SizedBox(width: 5),
          InkWell(
            onTap: () {
              setState(() {
                thumb = !thumb;
              });
            },
            child: Icon(
              thumb ? Icons.thumb_up_outlined : Icons.thumb_up_alt,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
