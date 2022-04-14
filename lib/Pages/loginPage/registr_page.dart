import 'package:savetime/Constans/colors_page.dart';
import 'package:savetime/Pages/caffePage/caffe_page.dart';
import 'package:flutter/material.dart';

class FirstHomePage extends StatefulWidget {
  const FirstHomePage({Key? key}) : super(key: key);

  @override
  _FirstHomePageState createState() => _FirstHomePageState();
}

class _FirstHomePageState extends State<FirstHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.white,
          image: DecorationImage(
            image: AssetImage('assets/images/anatoli.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20)
                .copyWith(top: 25),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: ((context) => const LoginPage())),
                            // );
                          },
                          child: const Text(
                            'Кируу',
                            style: TextStyle(
                              fontSize: 17,
                              color: AppColors.white,
                              fontFamily: 'Rubik',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      const Image(
                        image: AssetImage('assets/images/logo01.png'),
                        width: 120,
                        height: 120,
                      ),
                      const SizedBox(height: 20),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Биздин тиркемеде 100дон ашуун кафе\n 1000ден ашуун тамак-аштын туру бар.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 5,
                        ),
                        child: OutlinedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const CaffePage())),
                            );
                          },
                          icon: const Icon(Icons.facebook),
                          label: const Text(
                            'Facebook менен катталуу',
                            style: TextStyle(fontSize: 15),
                          ),
                          style: OutlinedButton.styleFrom(
                            minimumSize: const Size.fromHeight(40),
                            backgroundColor: AppColors.white,
                            primary: AppColors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      OutlinedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => const CaffePage()),
                            ),
                          );
                        },
                        icon: const Icon(Icons.email),
                        label: const Text(
                          'email менен катталуу',
                          style: TextStyle(fontSize: 15),
                        ),
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size.fromHeight(40),
                          primary: AppColors.white,
                          side: const BorderSide(color: AppColors.white),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 23.5,
                      ),
                      const Text(
                        'Катталуу менен сиз биздин колдонуу шарттарына\n макул болосуз жана сыр соз сакталат!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 11,
                          color: AppColors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
