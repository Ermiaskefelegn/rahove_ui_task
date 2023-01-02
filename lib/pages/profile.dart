import 'package:flutter/material.dart';
import 'package:rahove_ui_task/common_widgets/buttons.dart';
import 'package:sizer/sizer.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  ScrollController? _scrollController;
  bool lastStatus = true;
  double height = 200;

  void _scrollListener() {
    if (_isShrink != lastStatus) {
      setState(() {
        lastStatus = _isShrink;
      });
    }
  }

  bool get _isShrink {
    return _scrollController != null &&
        _scrollController!.hasClients &&
        _scrollController!.offset > (height - kToolbarHeight);
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController?.removeListener(_scrollListener);
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: false,
            toolbarHeight: 35.h,
            expandedHeight: 55.h,
            collapsedHeight: 35.h,
            backgroundColor: Color(0xff9747FF),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(0),
                child: _isShrink
                    ? Container(
                        height: 35.h,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
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
                            Text(
                              "Liya Dereje",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 2.w,
                            ),
                            Text(
                              "Liya Dereje2@gmail.com",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            CustomButton3(
                              color: const Color(0xff9747FF),
                              press: () {},
                              text: "Edit Profile",
                            )
                          ],
                        ),
                      )
                    : SizedBox()),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Stack(
                children: [
                  Image.asset(
                    'assets/pp.png',
                    width: 100.w,
                    fit: BoxFit.fill,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 1.w),
                        width: double.infinity,
                        height: 25.w,
                        color: const Color(0xffD9D9D9).withOpacity(0.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Liya Dereje",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 0.5.w,
                                ),
                                const Text(''),
                                Text(
                                  "Liya Dereje2@gmail.com",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            CustomButton2(
                              color: const Color(0xff9747FF),
                              press: () {},
                              text: "Edit Profile",
                            )
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
          //3

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 1.w),
                  color: Colors.grey.withOpacity(0.1),
                  child: ListTile(
                    horizontalTitleGap: 12.w,
                    leading: Icon(
                      Icons.notifications_outlined,
                      size: 24.sp,
                      color: const Color(0xff9747FF),
                    ),
                    title: Text(
                      "Notifications",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    trailing: const Text('4'),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
