import 'package:financial_ui/screens/line_chart.dart';
import 'package:flutter/material.dart';
import 'package:slidable_button/slidable_button.dart';

import '../widget/slide.dart';

class ChartScreen extends StatefulWidget {
  const ChartScreen({super.key});

  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  var item = [
    "Monthly",
    "Weekly",
    "Yearly",
    "Daily",
  ];
  String dropdownvalue = 'Weekly';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xFF262626)),
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF262626),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.dataset,
                        // size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF363636),
                  ),
                  child: Image.asset(
                    'assets/images/netflix.png',
                    width: 50,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Netflix",
                  style: TextStyle(
                    color: Color(0xFFFAFAFA),
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "(NFLX)",
                  style: TextStyle(
                    color: Color(0xFF9B9B9B),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                )
              ],
            ),
            const SizedBox(height: 25),
            Container(
              height: MediaQuery.of(context).size.height / 1.4 + 21,
              decoration: const BoxDecoration(
                color: Color(0xFF262626),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: const Color(0xFF333333),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: DropdownButton(
                        dropdownColor: const Color(0xFF333333),
                        iconSize: 15,
                        value: dropdownvalue,
                        isDense: true,
                        underline: const SizedBox(),
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xFFFF7955),
                          size: 24,
                        ),
                        style: const TextStyle(
                          color: Color(0xFFCCCCCC),
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                        items: item
                            .map((String item) => DropdownMenuItem(
                                  value: item,
                                  child: Text(item),
                                ))
                            .toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 250,
                      child: LineChartSample2(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "10",
                            style: TextStyle(
                              color: Color(0xFF9B9B9B),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFCAAD),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "11",
                            style: TextStyle(
                              color: Color(0xFFFF7955),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "12",
                            style: TextStyle(
                              color: Color(0xFF9B9B9B),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "13",
                            style: TextStyle(
                              color: Color(0xFF9B9B9B),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 70),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xFF303030),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Available for buying",
                              style: TextStyle(
                                color: Color(0xFF9B9B9B),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '\$8.423',
                                  style: TextStyle(
                                      color: Color(0xFFFAFAFA),
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 220,
                                  child: HorizontalSlidableButton(
                                    height: 60,
                                    buttonWidth: 100,
                                    width: double.infinity,
                                    color: const Color(0xFF262626),
                                    label: const Slide(text: "Buy"),
                                    isRestart: true,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      // crossAxisAlignment: CrossAxisAlignment.end,
                                      children: const [
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: Color(0xFF9B9B9B),
                                          size: 30,
                                        ),
                                        SizedBox(width: 10),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: Color(0xFF9B9B9B),
                                          size: 30,
                                        ),
                                        SizedBox(width: 10),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: Color(0xFF9B9B9B),
                                          size: 30,
                                        ),
                                        SizedBox(width: 10),
                                      ],
                                    ),
                                    onChanged: (position) {
                                      setState(() {
                                        // if (position == SlidableButtonPosition.end) {
                                        //   Navigator.push(context,
                                        //       MaterialPageRoute(builder: (context) {
                                        //     return const HomeScreen();
                                        //   }));
                                        // }
                                      });
                                    },
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
