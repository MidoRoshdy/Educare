import 'package:educare2/core/Assets.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            margin: EdgeInsets.only(left: 210, top: 10),
            child: Image.asset(
              Assets.logo_appbar,
              width: 200,
              height: 200,
              scale: 1,
            ),
          ),
          // backgroundColor: Colors.blue,
          leading:
              IconButton(icon: Icon(Iconsax.arrow_left_2), onPressed: () {}),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              margin: EdgeInsets.only(left: 1, right: 180, top: 0),
              child: Text(
                'Register',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 1.h,
            ),
            Column(
              children: [
                Container(
                  height: 100,
                  width: 300,
                  margin: EdgeInsets.only(left: 25, right: 20, top: 0),
                  child: Text(
                    'Please create an account to track your child',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff7D7D7D),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
