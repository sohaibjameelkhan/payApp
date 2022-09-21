import 'package:flutter/material.dart';
import '../utils/appcolors.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {Key? key,
      this.controller,
      required this.textFieldHeight,
      required this.maxlines,
      this.toppadding = 0,
      required this.hintText,
      this.validator,
      required this.textInputType,
      this.enabled,
      
      this.onChanged
      })
      : super(key: key);

  final TextEditingController? controller;
  final double textFieldHeight;
  final int maxlines;
  final double toppadding;
  final String hintText;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final bool? enabled;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: textFieldHeight,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.whitecolor.withOpacity(0.7),
            borderRadius: BorderRadius.circular(9),
            border: Border.all(
                width: 1, color: AppColors.darktextcolor.withOpacity(0.5))),
        child: TextFormField(
          onChanged: onChanged,
          enabled: enabled,
          style: const TextStyle(
            
              // textStyle: Theme.of(context).textTheme.headline4,
              fontSize: 13,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              color: AppColors.blackcolor),
          controller: controller,
          keyboardType: textInputType,
          maxLines: maxlines,
          validator: validator,
          decoration: InputDecoration(
              hintStyle: const TextStyle(
                  // textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 13,
                  fontFamily: "Montserrat",

                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: AppColors.darktextcolor),
              hintText: hintText,
              contentPadding:
                  EdgeInsets.only(left: 15, top: toppadding, right: 5),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
