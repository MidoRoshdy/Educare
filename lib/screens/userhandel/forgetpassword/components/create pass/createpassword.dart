import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/app_routes.dart';

//
class CreatePassword extends StatelessWidget {
  const CreatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(
              width: 90.w,
              height: 7.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.splash);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                child: Text(
                  "back ",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500),
                ),
              )),
          const Text("create password "),
        ],
      ),
    ));
  }
}

//
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("titel"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: const Text(
            "Creat New Password",
            style: TextStyle(
                color: Color(0xff000000),
                fontSize: 29.05,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
