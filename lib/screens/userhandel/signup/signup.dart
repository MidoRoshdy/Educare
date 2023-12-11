import 'package:educare2/core/Assets.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset(
            Assets.logox2,
            width: 133.67,
            height: 22,
          ),
        ],
        leading: IconButton(
            icon: const Icon(Iconsax.arrow_left_2),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: Column(
        children: [
          Container(
            child: const Column(
              children: [
                Text(
                  "Register",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 29.05,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Please create an account to track your child",
                  style: TextStyle(
                      color: Color(0xff7D7D7D),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Divider(
            height: 30,
          ),
          Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Educational code',
                  prefixIcon: Icon(
                    Iconsax.d_cube_scan,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xffD9D9D9),
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(
                    Iconsax.sms,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xffD9D9D9),
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(
                    Iconsax.lock,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xffD9D9D9),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
