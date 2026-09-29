
import 'package:fam_sync/core/utils/app_colors.dart';
import 'package:fam_sync/features/Auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustomCheckBox> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(value: value,
    activeColor: Color(AppColors.coral),
    side: BorderSide(color: Color(AppColors.textGray)),
     onChanged: (newValue){
      setState(() {
        value = newValue;
        BlocProvider.of<AuthCubit>(context).updateTermsAndConditionCheckBox(newValue: newValue);
      });
    });
  }
}