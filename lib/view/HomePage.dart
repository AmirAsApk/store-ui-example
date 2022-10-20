import 'package:elevate/model/MyColors.dart';
import 'package:elevate/view/CompanyAllPage.dart';
import 'package:elevate/view/CompanyPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rounded_tabbar_widget/rounded_tabbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.grayBackground,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 20, bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(
                      child: Center(
                          child: Text('Find your Company',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black)))),
                  Image.asset(
                    'assets/images/ic_notif.png',
                    width: 30,
                    height: 30,
                  )
                ],
              ),
            ),
            Expanded(
              child: RoundedTabbarWidget(
                itemNormalColor: MyColors.green_color.withOpacity(1),
                itemSelectedColor: MyColors.green_color.withOpacity(.2),
                tabBarBackgroundColor: MyColors.green_color.withOpacity(.3),
                tabIcons: const [
                  Icons.home,
                  Icons.my_location,
                  Icons.chat,
                  Icons.person,
                ],
                pages: [
                  CompanyPage(),
                  CompanyAllPage(),
                  Container(),
                  Container(),
                ],
                selectedIndex: 1,
                onTabItemIndexChanged: (int index) {
                  print('Index: $index');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
