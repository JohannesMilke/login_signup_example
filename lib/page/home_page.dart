import 'package:flutter/material.dart';
import 'package:login_signup_example/page/login_page.dart';
import 'package:login_signup_example/page/user_page.dart';
import 'package:login_signup_example/widget/button_widget.dart';
import 'package:login_signup_example/widget/title_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 96),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleWidget(icon: Icons.home, text: 'Signup'),
                buildButtons(),
              ],
            ),
          ),
        ),
      );

  Widget buildButtons() => Column(
        children: [
          const SizedBox(height: 24),
          ButtonWidget(
            text: 'Login',
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => LoginPage(),
            )),
          ),
          const SizedBox(height: 24),
          ButtonWidget(
            text: 'Register',
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => UserPage(),
            )),
          ),
        ],
      );
}
