import 'package:elevate/view/BubblePage.dart';
import 'package:flutter/material.dart';

import '../model/MyColors.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/background_login.jpg',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Find your Company\nfor Investment or\ncapital attraction',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Podkova',
                              fontSize: 35,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'We are here for who want to find\nVC,Corporations, Startups ,\nAngel,Investors, Advisors, Influencers',
                          style: TextStyle(
                              fontFamily: 'Podkova',
                              fontSize: 15,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BubblePage()));
                            },
                            child: const Text('Join now',
                                style: TextStyle(
                                    fontFamily: 'Podkova',
                                    fontSize: 15,
                                    color: MyColors.green_color)),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(12), // <-- Radius
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 30),
                          child: Center(
                            child: Text(
                              'Already have account? Log in',
                              style: TextStyle(
                                  fontFamily: 'Podkova',
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
