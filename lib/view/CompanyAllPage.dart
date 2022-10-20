import 'package:elevate/model/MyColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CompanyAllPage extends StatefulWidget {
  const CompanyAllPage({Key? key}) : super(key: key);

  @override
  State<CompanyAllPage> createState() => _CompanyAllPageState();
}

class _CompanyAllPageState extends State<CompanyAllPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.grayBackground,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 15, left: 25),
            child: Row(
              children: const [
                Expanded(
                  child: Text('Your Match',
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                ),
                Expanded(
                  child: Text('see all',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 15,
                        color: MyColors.green_color,
                      )),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 15, right: 20, left: 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: getListItem,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 25),
            child: Row(
              children: const [
                Expanded(
                  child: Text('Category',
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                ),
                Expanded(
                  child: Text('see all',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 15,
                        color: MyColors.green_color,
                      )),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 15, right: 20, left: 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: getListItem2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getListItem(cx, index) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              width: 180,
              height: 260,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/image_preview.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
                child: Stack(
                  children: [
                    Center(child: Image.asset('assets/images/ic_play.png')),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Kalvin Startup',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget getListItem2(cx, index) {
    return Wrap(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                width: 130,
                height: 180,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/image_preview.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
                  child: Stack(
                    children: [
                      Center(
                          child: Image.asset(
                        'assets/images/ic_play.png',
                        width: 50,
                        height: 50,
                      )),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Kalvin Startup',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<BoxShadow> iconShadow = [
    const BoxShadow(
      color: Color(0x18000000),
      spreadRadius: 0.1,
      blurRadius: 0.5,
    )
  ];
}
