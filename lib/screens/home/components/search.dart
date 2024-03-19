// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class search extends StatelessWidget {
  TextEditingController? controller;
  String? Function(String?)? validator;
  String? Function(String?)? onChange;
  String? hintText;

  TextInputType? keyboardType;
  TextStyle? style;
  Widget? suffixIcon;
  Widget? prefixIcon;

  search({
    super.key,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.onChange,
    this.hintText,
    this.prefixIcon,
    this.keyboardType,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20.w),
        child: TextFormField(
          controller: controller,
          style: style,
          onChanged: onChange,
          validator: validator,
          keyboardType: keyboardType,
          decoration: InputDecoration(
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              hintText: hintText,
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Colors.black),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
