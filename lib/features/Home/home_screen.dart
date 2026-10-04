import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ox_game/thems/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: XOColors.bg,

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 31.0.w,
            right: 31.0.w,
            top: 26.5.h,
            bottom: 22.h,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 38.r,
                    height: 38.r,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: XOColors.primary,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Text(
                      'XO',
                      style: XOText.bodyStrong.copyWith(fontSize: 15.sp),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 40.r,
                    height: 40.r,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: XOColors.surface2,
                      shape: BoxShape.circle,
                      border: Border.all(color: XOColors.line),
                    ),
                    child: Icon(
                      Icons.tune_rounded,
                      size: 18.r,
                      color: XOColors.muted,
                    ),
                  ),
                ],
              ),
              25.verticalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: 'Tic-tac-toe,\n',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: 'quick\n',
                          style: TextStyle(
                            color: XOColors.playerX,
                          ), // Custom soft purple/blue
                        ),
                        TextSpan(
                          text: '& clean.',
                          style: TextStyle(
                            color: XOColors.playerO,
                          ), // Custom soft orange
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Pass the phone back and forth. First to 3 \nin a row wins!',
                    style: XOText.body.copyWith(fontSize: 15.sp),
                  ),
                  44.verticalSpace,
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
