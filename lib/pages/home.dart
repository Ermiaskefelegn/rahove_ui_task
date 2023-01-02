// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rahove_ui_task/common_widgets/home_page_graph_widget.dart';
import 'package:rahove_ui_task/screens/main_page.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              height: 58.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xff9747FF),
                    const Color(0xff4776E6).withOpacity(0.5)
                  ],
                  tileMode: TileMode.decal,
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4.w),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(
                              () => const MainPage(
                                index: 3,
                              ),
                            );
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 10.w,
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 9.w,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(300.0)),
                                child: Image.asset(
                                  "assets/pp.png",
                                  width: 30.w,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          padding: EdgeInsets.all(1.w),
                          child: Image.asset(
                            "assets/menu.png",
                            width: 10.w,
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.w),
                    child: Text(
                      "Hello Soliana",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.w),
                    child: Text(
                      "Let’s check our status",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      margin: EdgeInsets.symmetric(
                          vertical: 4.w, horizontal: 0.2.w),
                      height: 15.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return Container(
                            height: 15.h,
                            width: 80.w,
                            margin: EdgeInsets.symmetric(horizontal: 2.w),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Expanded(
                              child: Column(
                                children: [
                                  bar_titile_tile(),
                                  Divider(
                                    color: Colors.black,
                                    height: 0.2.w,
                                  ),
                                  const HomePageGraphWidget()
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              )),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 3.w,
            ),
            height: 33.h,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recent operations",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff9747FF)),
                  ),
                  SizedBox(
                    height: 2.w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.8),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(3),
                            bottomLeft: Radius.circular(3),
                            bottomRight: Radius.circular(3))),
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 0.5.w),
                    child: Text(
                      "Today",
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  Column(
                    children: [
                      recent_operation_tile(),
                      recent_operation_tile()
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 2.w,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.8),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(3),
                                bottomLeft: Radius.circular(3),
                                bottomRight: Radius.circular(3))),
                        padding: EdgeInsets.symmetric(
                            horizontal: 6.w, vertical: 0.5.w),
                        child: Text(
                          "Yesterday",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                      recent_operation_tile(),
                      recent_operation_tile()
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  ListTile bar_titile_tile() {
    return ListTile(
      minVerticalPadding: 0,
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 5.w,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(300.0)),
          child: Image.asset(
            "assets/feres.png",
            width: 30.w,
            fit: BoxFit.fill,
          ),
        ),
      ),
      subtitle: Text(
        "http://www.feres.com",
        style: TextStyle(
            fontSize: 10.sp, fontWeight: FontWeight.w500, color: Colors.black),
      ),
      title: Text(
        "Feres Transport",
        style: TextStyle(
            fontSize: 14.sp, fontWeight: FontWeight.w500, color: Colors.grey),
      ),
      trailing: const Icon(
        Icons.more_horiz,
        color: Colors.grey,
      ),
    );
  }

  Container recent_operation_tile() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          border: Border(
              bottom:
                  BorderSide(width: 2, color: Colors.grey.withOpacity(0.8)))),
      child: ListTile(
        minVerticalPadding: 0,
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 5.w,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(300.0)),
            child: Image.asset(
              "assets/pp.png",
              width: 30.w,
              fit: BoxFit.fill,
            ),
          ),
        ),
        subtitle: Text(
          "+251 939 09 0908",
          style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black),
        ),
        title: Text(
          "Mihret Belay",
          style: TextStyle(
              fontSize: 14.sp, fontWeight: FontWeight.w500, color: Colors.grey),
        ),
        trailing: SizedBox(
          width: 30.8.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.add,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 0.5.w,
                  ),
                  Text(
                    "1000.2 ETB",
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 0.5.w,
                  ),
                  Text(
                    "ETB",
                    style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff9747FF)),
                  ),
                ],
              ),
              Text(
                "04:08 AM",
                style: TextStyle(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
