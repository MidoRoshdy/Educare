import 'package:educare2/core/Assets.dart';
import 'package:educare2/screens/userhandel/login/provider/loginprovider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../core/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: 100.w,
            height: 13.h,
            child: Stack(
              children: [
                ////////////////////////logo//////////////////////////////////////////////////////////
                Positioned(
                  top: 6.5.h,
                  right: 5.w,
                  child: Container(
                    alignment: Alignment.center,
                    height: 5.h,
                    width: 25.w,
                    child: Image.asset(
                      Assets.logo_with_appbar,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ///////////////////////login/////////////////////////////////////////
          SizedBox(
            width: 100.w,
            height: 87.h,
            child: Padding(
              padding: EdgeInsets.only(left: 5.w, right: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //! create account text
                  Text("Login",
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w500)),
                  Divider(
                    color: Colors.transparent,
                    height: 1.5.h,
                  ),
                  Text("Please login to rack your child ",
                      style: TextStyle(
                          fontSize: 9.5.sp, fontWeight: FontWeight.w400)),
                  ////////////////////////////////// username////////////////////////////////////////////////////
                  Container(
                    padding: EdgeInsets.all(1.w),
                    margin: EdgeInsets.only(top: 3.5.h, bottom: 2.h),
                    alignment: Alignment.center,
                    height: 8.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            width: 1.sp,
                            color: context.watch<LoginProvider>().state.email ==
                                    null
                                ? AppColours.neutral300
                                : context
                                            .watch<LoginProvider>()
                                            .state
                                            .usernameErrorMessage !=
                                        null
                                    ? AppColours.danger500
                                    : AppColours.primary500)),
                    child: TextField(
                      controller:
                          context.read<LoginProvider>().state.emailController,
                      onChanged: context.read<LoginProvider>().onUsernameChange,
                      onSubmitted:
                          context.read<LoginProvider>().onUsernameChange,
                      style: TextStyle(fontSize: 14.sp),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
                        prefixIcon: const Icon(
                          Iconsax.sms,
                        ),
                        prefixIconColor:
                            context.watch<LoginProvider>().state.email == null
                                ? AppColours.neutral300
                                : context
                                            .watch<LoginProvider>()
                                            .state
                                            .usernameErrorMessage !=
                                        null
                                    ? AppColours.danger500
                                    : AppColours.primary500,
                      ),
                    ),
                  ),
                  /////////////////////////////////////////////////// password////////////////////////////////
                  Container(
                    padding: EdgeInsets.all(1.w),
                    margin: EdgeInsets.only(bottom: 2.h),
                    alignment: Alignment.center,
                    height: 8.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 1.sp,
                            color:
                                context.watch<LoginProvider>().state.password ==
                                        null
                                    ? AppColours.neutral300
                                    : context
                                                .watch<LoginProvider>()
                                                .state
                                                .passwordErrorMessage !=
                                            null
                                        ? AppColours.danger500
                                        : AppColours.primary500)),
                    child: TextField(
                      obscureText:
                          context.watch<LoginProvider>().state.hidePass,
                      controller: context
                          .read<LoginProvider>()
                          .state
                          .passwordController,
                      onChanged: context.read<LoginProvider>().onPasswordChange,
                      onSubmitted:
                          context.read<LoginProvider>().onPasswordChange,
                      style: TextStyle(fontSize: 14.sp),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          prefixIcon: const Icon(
                            Iconsax.lock,
                          ),
                          prefixIconColor:
                              context.watch<LoginProvider>().state.password ==
                                      null
                                  ? AppColours.neutral300
                                  : context
                                              .watch<LoginProvider>()
                                              .state
                                              .passwordErrorMessage !=
                                          null
                                      ? AppColours.danger500
                                      : AppColours.primary500,
                          suffixIcon: IconButton(
                            onPressed: () =>
                                context.read<LoginProvider>().showPassword(),
                            icon:
                                context.watch<LoginProvider>().state.hidePass ==
                                        true
                                    ? const Icon(Iconsax.eye_slash4)
                                    : const Icon(Iconsax.eye3),
                          )),
                    ),
                  ),
                  /////////////////////////////////////////////////Checkbox////////////////////////////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          child: Row(
                        children: [
                          Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateColor.resolveWith((states) {
                                return context
                                        .watch<LoginProvider>()
                                        .state
                                        .rememberMe
                                    ? AppColours.primary500
                                    : AppColours.neutral300;
                              }),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              value: context
                                  .watch<LoginProvider>()
                                  .state
                                  .rememberMe,
                              onChanged: context
                                  .read<LoginProvider>()
                                  .onChangeRememberMe),
                          Text("Remember me",
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: AppColours.neutral800,
                                  fontWeight: FontWeight.w400))
                        ],
                      )),
                      InkWell(
                        onTap: () {},
                        child: Text("Forgot password?",
                            style: TextStyle(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColours.primary500)),
                      )
                    ],
                  ),
                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",
                          style: TextStyle(
                              fontSize: 9.5.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColours.neutral400)),
                      SizedBox(
                        width: 1.w,
                      ),
                      InkWell(
                        onTap: () => context
                            .read<LoginProvider>()
                            .navigateToRegister(context),
                        child: Text("Register",
                            style: TextStyle(
                                fontSize: 9.5.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColours.primary500)),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 2.h,
                  ),
                  ///////////////////////////////////////////login button////////////////////////////////////
                  SizedBox(
                    width: 90.w,
                    height: 7.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColours.neutral300,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0))),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 2.h,
                  ),

                  Divider(
                    color: Colors.transparent,
                    height: 2.h,
                  ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     InkWell(
                  //       onTap: () async => await context
                  //           .read<LoginProvider>()
                  //           .logInWithGoogle(),
                  //       child: Container(
                  //         width: 40.w,
                  //         height: 6.h,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(10),
                  //           image: const DecorationImage(
                  //               image: AssetImage(Assets.google),
                  //               fit: BoxFit.fill),
                  //         ),
                  //       ),
                  //     ),
                  //     // InkWell(
                  //     //   onTap:(){},
                  //     //   child: Container(
                  //     //     width: 40.w,
                  //     //     height: 6.h,
                  //     //     decoration: BoxDecoration(
                  //     //       borderRadius: BorderRadius.circular(10),
                  //     //       image: const DecorationImage(
                  //     //           // image: AssetImage(Assets.),
                  //     //           fit: BoxFit.fill),
                  //     //     ),
                  //     //   ),
                  //     // )
                  //   ],
                  // ),
                  Divider(
                    color: Colors.transparent,
                    height: 4.h,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
