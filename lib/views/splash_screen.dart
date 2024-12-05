import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/utils/color.dart';
import 'package:instagram_clone/widgets/custom_elevated_button.dart';
import 'package:instagram_clone/widgets/custom_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(34),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/logo.svg',
                  ),
                  const SizedBox(
                    height: 52,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/user.jpg'),
                    radius: 85.0,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  const CustomText(
                    title: 'shifat_w',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    textColor: AppColors.textBlack,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const CustomElevatedButton(
                    buttonText: 'Log in',
                    buttonPadding: 14,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const CustomText(
                      title: 'Switch Account',
                      fontSize: 14,
                      textColor: AppColors.textBlue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),
              ),
              height: 84,
              padding: const EdgeInsets.fromLTRB(9, 18, 9, 9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: 'Don’t have an account? ',
                        fontSize: 12,
                        textColor: AppColors.textBlack.withOpacity(0.5),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const CustomText(
                          title: 'Sign Up',
                          fontSize: 12,
                          textColor: AppColors.textBlack,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 134,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
