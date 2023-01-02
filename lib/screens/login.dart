import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rahove_ui_task/common_widgets/buttons.dart';
import 'package:rahove_ui_task/common_widgets/input_fields.dart';
import 'package:rahove_ui_task/screens/main_page.dart';
import 'package:rahove_ui_task/screens/signup.dart';
import 'package:sizer/sizer.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

TextEditingController passwordController = TextEditingController();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 2.w),
          height: height,
          width: width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff9747FF)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: Text(
                    "become a member of  our platform",
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ),
                SizedBox(height: 2.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w800),
                      ),
                    ),
                    SizedBox(height: 2.w),
                    const CustomInputField(
                        name: "phoneno",
                        hintText: "Email",
                        icon: CupertinoIcons.mail,
                        lableText: "Email",
                        type: TextInputType.emailAddress),
                  ],
                ),
                SizedBox(height: 2.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w800),
                      ),
                    ),
                    const CustomInputField(
                        name: "phoneno",
                        hintText: "Password",
                        icon: CupertinoIcons.lock,
                        lableText: "Password",
                        type: TextInputType.number),
                  ],
                ),
                SizedBox(height: 2.w),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 2.w, horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Forgot Password ?",
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.w),
                CustomButton(
                  color: const Color(0xff9747FF),
                  text: "Login",
                  press: () {
                    Get.to(() => const MainPage(
                          index: 0,
                        ));
                  },
                  textColor: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                          indent: 2,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 2.w),
                        child: const Text(
                          "Log in with",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey),
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                          indent: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/go.png",
                        height: 15.w,
                        width: 15.w,
                      ),
                      Image.asset(
                        "assets/fb.png",
                        height: 15.w,
                        width: 15.w,
                      ),
                      Image.asset(
                        "assets/ap.png",
                        height: 15.w,
                        width: 15.w,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don’t have an account? ",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => const Signup());
                        },
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff9747FF)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
