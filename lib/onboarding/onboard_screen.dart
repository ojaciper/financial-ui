import 'package:financial_ui/screens/home_screen.dart';
import 'package:financial_ui/utils/common.dart';
import 'package:financial_ui/widget/cards.dart';
import 'package:financial_ui/widget/slide.dart';
import 'package:flutter/material.dart';
import 'package:slidable_button/slidable_button.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            child: Container(
              height: size.height / 1.4,
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Color(0xFFFF7955),
                    Color(0x00FF7955),
                  ],
                  radius: 0.6,
                  stops: [
                    0.0,
                    1,
                  ],
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 3,
                      width: 100,
                      color: const Color(0xFFFFCEB5),
                    ),
                    Container(
                      height: 3,
                      width: 100,
                      color: const Color(0xFF303030),
                    ),
                    Container(
                      height: 3,
                      width: 100,
                      color: const Color(0xFF303030),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50),
              // TRANSFORM

              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                // color: Colors.red,
                height: size.height / 2 + 50,
                child: Stack(
                  children: [
                    Positioned(
                      child: Transform(
                        transform: Matrix4.skewX(0.3),
                        child: Cards(
                          color: firstCardColor,
                          image: Image.asset('assets/images/gallery.png',
                              width: 30),
                          cardColor: const Color.fromRGBO(255, 255, 255, 0.5),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      // top: 10,
                      right: 2,
                      // left: ,
                      child: Transform(
                        transform: Matrix4.skewX(-0.2),
                        child: Cards(
                          color: secondCardColor,
                          image: Image.asset('assets/images/gallery-white.png',
                              width: 30),
                          cardColor: const Color(0xFF383838),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    width: size.width / 1.5,
                    child: const Text(
                      "Make Your Finances in One Place!",
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          height: 1.5),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "Your money is safe and growing with us.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF9B9B9B),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: HorizontalSlidableButton(
                  height: 60,
                  buttonWidth: 150,
                  width: double.infinity,
                  color: const Color(0xFF303030),
                  label: const Slide(
                    text: "Get Started",
                  ),
                  isRestart: true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF9B9B9B),
                        size: 30,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF9B9B9B),
                        size: 30,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF9B9B9B),
                        size: 30,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF9B9B9B),
                        size: 30,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF9B9B9B),
                        size: 30,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF9B9B9B),
                        size: 30,
                      ),
                    ],
                  ),
                  onChanged: (position) {
                    setState(() {
                      if (position == SlidableButtonPosition.end) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const HomeScreen();
                        }));
                      }
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
