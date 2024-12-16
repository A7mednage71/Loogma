import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:looqma/core/utils/app_colors.dart';
import 'package:looqma/core/utils/app_styles.dart';
import 'package:pinput/pinput.dart';

class VerifyCodeWidget extends StatelessWidget {
  const VerifyCodeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Pinput(
          length: 5,
          onCompleted: (otp) {
            log("Completed: $otp");
          },
          onChanged: (value) {},
          defaultPinTheme: PinTheme(
            width: 50.w,
            height: 50.h,
            textStyle: AppStyles.largeBoldText,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.grayLighter),
            ),
          ),
          focusedPinTheme: PinTheme(
            width: 55.w,
            height: 55.h,
            textStyle: AppStyles.largeRegularText.copyWith(color: Colors.blue),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.primaryDarker),
            ),
          ),
          errorPinTheme: PinTheme(
            width: 50.w,
            height: 50.h,
            textStyle: AppStyles.largeRegularText.copyWith(color: Colors.red),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
