import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/views/home_screen.dart';
import 'package:instagram_clone/views/splash_screen.dart';
import 'package:instagram_clone/widgets/custom_elevated_button.dart';
import 'package:instagram_clone/widgets/custom_text.dart';
import 'package:instagram_clone/widgets/custom_text_field.dart';

import '../utils/color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formState = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // Dispose of the controllers when the widget is removed from the tree
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Flag to track if the button should be enabled
  bool _isButtonDisabled = true;

  // Function to check if both fields have text
  void _checkButtonState() {
    setState(() {
      // Enable the button only if both fields are not empty
      _isButtonDisabled =
          _usernameController.text.isEmpty || _passwordController.text.isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SplashScreen(),
                    ),
                  );
                },
                child: SvgPicture.asset('assets/icons/back.svg'),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    SvgPicture.asset('assets/icons/logo.svg'),
                    const SizedBox(
                      height: 39,
                    ),
                    Form(
                      key: formState,
                      child: Column(
                        children: [
                          CustomTextField(
                            controller: _usernameController,
                            onChangedBehavior: (value) {
                              _checkButtonState();
                            },
                            hintText: 'Username or Mobile number',
                            errorMessage: 'Username or Mobile number required',
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          CustomTextField(
                            controller: _passwordController,
                            onChangedBehavior: (value) {
                              _checkButtonState();
                            },
                            hintText: 'Password',
                            errorMessage: 'Password is required',
                            obscureText: true,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: CustomText(
                        title: 'Forgot password?',
                        fontSize: 12,
                        textColor: AppColors.textBlue,
                        alignText: TextAlign.right,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomElevatedButton(
                      buttonColor: _isButtonDisabled
                          ? AppColors.primaryButtonColor.withOpacity(0.5)
                          : AppColors.primaryButtonColor,
                      buttonText: 'Log in',
                      buttonPadding: 14,
                      buttonFontWeight: FontWeight.w600,
                      buttonHandler: () {
                        if (formState.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        }
                      },
                    ),
                    const SizedBox(
                      height: 38.5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/facebook.svg'),
                        const SizedBox(
                          width: 10,
                        ),
                        const CustomText(
                          title: 'Log in with Facebook',
                          fontSize: 14,
                          textColor: AppColors.textBlue,
                          fontWeight: FontWeight.bold,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 41,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 1,
                            color: Colors.black.withOpacity(0.09),
                          ),
                        ),
                        const SizedBox(
                          width: 30.5,
                        ),
                        CustomText(
                          title: 'OR',
                          fontSize: 12,
                          textColor: AppColors.textBlack.withOpacity(0.4),
                        ),
                        const SizedBox(
                          width: 30.5,
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            color: Colors.black.withOpacity(0.09),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 41.5,
                    ),
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
                            textColor: AppColors.textBlue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  // color: Colors.red,
                  border: Border(
                    top: BorderSide(
                      width: 1,
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ),
                ),
                height: 80,
                width: double.infinity,
                padding: const EdgeInsets.all(5),
                child: Center(
                  child: CustomText(
                    title: 'Instagram от Facebook',
                    fontSize: 12,
                    textColor: AppColors.textBlack.withOpacity(0.5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
