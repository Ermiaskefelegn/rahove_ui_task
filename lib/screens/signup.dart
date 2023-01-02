import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rahove_ui_task/common_widgets/buttons.dart';
import 'package:rahove_ui_task/common_widgets/input_fields.dart';
import 'package:rahove_ui_task/screens/login.dart';
import 'package:rahove_ui_task/screens/main_page.dart';
import 'package:sizer/sizer.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

TextEditingController passwordController = TextEditingController();

class _SignupState extends State<Signup> {
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
                  padding: EdgeInsets.only(top: 4.h),
                  child: Text(
                    "Welcome",
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
                SizedBox(height: 2.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        "Full Name",
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w800),
                      ),
                    ),
                    SizedBox(height: 2.w),
                    const CustomInputField(
                        name: "phoneno",
                        hintText: "Full Name",
                        icon: CupertinoIcons.mail,
                        lableText: "Full Name",
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
                        lableText: "login_lable_text_p_no",
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
                SizedBox(height: 2.w),
                CustomButton(
                  color: const Color(0xff9747FF),
                  text: "Signup",
                  press: () {
                    Get.to(() => const MainPage(
                          index: 0,
                        ));
                  },
                  textColor: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h),
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
                  padding: EdgeInsets.symmetric(vertical: 1.h),
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
                          Get.to(() => const Login());
                        },
                        child: const Text(
                          "Login",
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
