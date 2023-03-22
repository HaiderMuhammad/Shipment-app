import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.hintText,
    required this.maxLines,
    this.minLines = 1,
    this.maxLength,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
    this.onChanged,
    this.controller,
    this.textInputType,
    this.title,
    this.obscureText = false, required this.titleHeight, this.width, this.textAlign, this.readOnly,
  }) : super(key: key);

  final String? hintText;
  final int maxLines;
  final int? minLines;
  final int? maxLength;
  final TextAlign? textAlign;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final String? title;
  final double titleHeight;
  final bool obscureText;
  final double? width;
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? "",
          style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xff464646),
            height: titleHeight
          ),
        ),
        SizedBox(
          width: width,
          child: TextFormField(
            readOnly: readOnly ?? false,
            controller: controller,
            onChanged: onChanged,
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            cursorHeight: 20.h,
            maxLength: maxLength,
            maxLines: maxLines,
            minLines: minLines,
            keyboardType: textInputType,
            textAlign: textAlign ?? TextAlign.start,
            obscureText: obscureText,
            decoration: InputDecoration(
              errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1 , color: Colors.redAccent )),
              focusedErrorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1 , color: Colors.redAccent )),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1 , color: Colors.blueAccent )),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1 , color: Colors.black87 )
              ),
              hintText: hintText,
              contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            ),
            validator: validator,
            // maxLengthEnforcement: MaxLengthEnforcement.enforced,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onSaved: onSaved,
            onFieldSubmitted: onFieldSubmitted,
          ),
        )
      ],
    );
  }
}
