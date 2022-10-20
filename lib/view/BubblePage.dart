import 'package:bubble_chart/bubble_chart.dart';
import 'package:elevate/model/MyColors.dart';
import 'package:elevate/model/Roll.dart';
import 'package:elevate/view/HomePage.dart';
import 'package:flutter/material.dart';

class BubblePage extends StatefulWidget {
  const BubblePage({Key? key}) : super(key: key);

  @override
  State<BubblePage> createState() => _BubblePageState();
}

class _BubblePageState extends State<BubblePage> {
  List<BubbleNode> bubbles = [];
  List<Roll> rolls = [];
  int step = 0;

  BubbleNode getGreenBubble(double size) {
    return BubbleNode.leaf(
        value: size,
        options: BubbleOptions(
            color: MyColors.green_color,
            child: const Center(
                child: Text('Category',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Colors.white)))));
  }

  BubbleNode getGrayBubble(value) {
    BubbleNode node = BubbleNode.leaf(
        value: value,
        options: BubbleOptions(
            color: MyColors.gray_color,
            child: const Center(
                child: Text('Category',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Colors.black)))));
    node.options?.onTap = () {
      setState(() {});
    };
    return node;
  }

  @override
  void initState() {
    super.initState();

    bubbles = [
      getGreenBubble(4159),
      getGreenBubble(3100),
      getGreenBubble(2100),
      getGreenBubble(2000),
      getGreenBubble(4159),
      getGreenBubble(3100),
      getGrayBubble(2100),
      getGreenBubble(2000),
      getGrayBubble(4159),
      getGreenBubble(3000),
      getGreenBubble(2100),
      getGreenBubble(2000),
      getGreenBubble(4159),
      getGreenBubble(3100),
      getGreenBubble(2100),
      getGrayBubble(7000),
      getGrayBubble(7000),
      getGrayBubble(2000),
      getGrayBubble(2000),
    ];

    for (int i = 0; i < 30; i++) {
      rolls.add(
          Roll('assets/images/image_person.png', 'Roll', 'Lorem Ipsum', false));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () => goToHome(),
                      child: const Text('Skip',
                          style: TextStyle(
                              fontFamily: 'Podkova',
                              fontSize: 17,
                              color: Colors.black)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                      step == 0
                          ? 'What is your Job\nCategory?'
                          : 'Choose Your Roll',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Podkova',
                          fontSize: 30,
                          color: Colors.black)),
                ),
              ),
              Expanded(
                  child: step == 0
                      ? BubbleChartLayout(
                          children: bubbles,
                        )
                      : ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: rolls.length,
                          itemBuilder: (cx, index) {
                            Roll roll = rolls[index];
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, bottom: 5, top: 5),
                              child: Card(
                                color: roll.select
                                    ? MyColors.green_color
                                    : MyColors.gray_color,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      roll.select = !roll.select;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Image.asset(
                                            roll.image,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10, left: 10),
                                              child: Text(
                                                roll.title,
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 23),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5, left: 10),
                                              child: Text(
                                                roll.descriptions,
                                                style: const TextStyle(
                                                    fontSize: 15),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        )),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (step == 0) {
                        setState(() {
                          step = 1;
                        });
                      } else {
                        goToHome();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.green_color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                    ),
                    child: const Text('Continue',
                        style: TextStyle(
                            fontFamily: 'Podkova',
                            fontSize: 15,
                            color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  goToHome() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}
