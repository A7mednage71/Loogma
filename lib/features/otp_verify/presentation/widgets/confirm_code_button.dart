import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:looqma/core/utils/app_colors.dart';
import 'package:looqma/core/utils/app_styles.dart';

class ConfirmCodeButton extends StatelessWidget {
  const ConfirmCodeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 60.h,
        decoration: BoxDecoration(
          color: AppColors.primaryDark,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: Text(
            "Confirm Code",
            style: AppStyles.normalBoldText.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}