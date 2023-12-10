import 'package:educare2/core/Assets.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  get ps => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
          Image.asset(
            Assets.logo_with_appbar,
            width: 133.67,
            height: 22,
          ),
        ],
          leading:
              IconButton(icon: Icon(Iconsax.arrow_left_2), onPressed: () {}),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
