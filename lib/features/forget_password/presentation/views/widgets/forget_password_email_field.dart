import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:looqma/core/common/widgets/custom_text_field.dart';
import 'package:looqma/core/utils/app_styles.dart';
import 'package:looqma/core/utils/my_validator.dart';

class ForgetPasswordEmailField extends StatelessWidget {
  const ForgetPasswordEmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: GlobalKey<FormState>(),
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Your Email", style: AppStyles.smallRegularText),
          SizedBox(height: 5.h),
          CustomTextField(
            controller: TextEditingController(),
            validator: MyValidators.emailValidator,
            keyboardType: TextInputType.emailAddress,
            hintText: "Enter Email",
          ),
        ],
      ),
    );
  }
}