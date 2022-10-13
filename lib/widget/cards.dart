import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards(
      {super.key,
      required this.color,
      required this.image,
      required this.cardColor});
  final List<Color> color;
  final Image image;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 254,
          height: 355,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
              colors: color,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: image,
                  ),
                  Row(
                    children: const [
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          "( Apple )",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFDDCC),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          "Apple Inc.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFFDDCC),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ).copyWith(top: 20, bottom: 10),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 0.12),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: const [
                    Text(
                      "\$ 7.213.05",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFFAFAFA),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "+50.235(5.25%)",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFFFAFAFA),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: 0,
          child: Image.asset('assets/images/Ellipse1.png'),
        ),
        Positioned(
          right: 0,
          top: -20,
          child: Image.asset(
            'assets/images/Ellipse2.png',
          ),
        )
      ],
    );
  }
}
