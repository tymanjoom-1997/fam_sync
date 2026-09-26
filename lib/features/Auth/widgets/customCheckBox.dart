
import 'package:fam_sync/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustomCheckBox> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(value: value,
    activeColor: Color(AppColors.coral),
    side: BorderSide(color: Color(AppColors.textGray)),
     onChanged: (newValue){
      setState(() {
        value = newValue!;
      });
    });
  }
}