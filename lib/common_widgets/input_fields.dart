import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sizer/sizer.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField(
      {Key? key,
      required this.name,
      required this.hintText,
      required this.lableText,
      required this.type,
      this.textinputcontroller,
      this.icon,
      this.colors})
      : super(key: key);
  final String name, hintText, lableText;
  final TextInputType type;
  final IconData? icon;
  final TextEditingController? textinputcontroller;
  final Color? colors;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 10.h,
        width: 83.w,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
        child: FormBuilderTextField(
          controller: textinputcontroller,
          name: name,
          cursorColor: const Color(0xff9747FF),
          decoration: InputDecoration(
              prefixIcon: Icon(
                icon,
                color: Colors.grey[400],
              ),
              labelStyle: TextStyle(color: Colors.grey[400], fontSize: 15),
              enabledBorder: const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 147, 146, 148)),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff9747FF), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              labelText: lableText,
              hintStyle:
                  TextStyle(color: const Color(0xff9747FF).withOpacity(0.6)),
              hintText: hintText,
              fillColor: const Color(0xff9747FF)),
          keyboardType: type,
        ),
      ),
    );
  }
}
