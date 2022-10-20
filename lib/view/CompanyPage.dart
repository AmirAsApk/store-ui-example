import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CompanyPage extends StatefulWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  State<CompanyPage> createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 15, right: 20, left: 20),
        child: Column(
          children: [
            Stack(alignment: Alignment.topCenter, children: [
              Container(
                width: double.infinity,
                height: 480,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/background_image_preview.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                    child: Image.asset(
                        'assets/images/ic_play.png')) /* add child content here */,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  width: double.infinity,
                  height: 450,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/image_preview.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 10, left: 10, bottom: 20),
                    child: Stack(
                      children: [
                        Center(
                            child: Image.asset('assets/images/ic_play.png')),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Kalvin Startup',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Text('Slogan or Short Description',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: iconShadow,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset("assets/images/ic_dislice.png"),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  margin: EdgeInsets.all(5),
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: iconShadow,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset("assets/images/ic_like.png"),
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  margin: EdgeInsets.all(5),
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: iconShadow,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.message_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  margin: EdgeInsets.all(5),
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: iconShadow,
                  ),
                  child: const Icon(
                    Icons.video_call_outlined,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
                SizedBox(width: 15),
              ],
            )
          ],
        ),
      ),
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
