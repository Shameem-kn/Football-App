import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manu_app_1/utils/colors.dart';
import 'package:manu_app_1/view/signup_view.dart';
import 'package:manu_app_1/widgets/custom_container.dart';
import 'package:manu_app_1/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            foregroundColor: manchesterRedColour,
            toolbarHeight: 100,
            centerTitle: true,
            title: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Image.asset(
                  "assets/images/manchester_united_logo.png",
                  fit: BoxFit.contain,
                  width: 100.h,
                  height: 80.h,
                ),
              ],
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Skip >",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(width: 10.w)
            ]),
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Padding(
              padding: EdgeInsets.fromLTRB(29.w, 0, 29.w, 10.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Welcome Back!",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        CustomContainer(
                          width: 332.w,
                          height: 54.h,
                          radius: 14,
                          color: null,
                          borderWidth: 1.2,
                          child: CustomTextField(
                              controller: _usernameController,
                              hintText: "User name"),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        CustomContainer(
                          width: 332.w,
                          height: 54.h,
                          radius: 14,
                          color: null,
                          borderWidth: 1.2,
                          child: CustomTextField(
                              controller: _passwordController,
                              hintText: "Password",
                              suffixIcon: Icons.visibility),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        const Center(
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(
                              color: manchesterRedColour,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        CustomContainer(
                            width: 332.w,
                            height: 54.h,
                            radius: 14,
                            color: manchesterRedColour,
                            child: const Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Dont have an account?",
                              style: TextStyle(
                                  // color: manchesterRedColour,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const SignUpPage()));
                              },
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: manchesterRedColour,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.grey,
                                height: 50.h,
                                thickness: 1,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                              child: const Text(
                                'OR',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey),
                              ),
                            ),
                            const Expanded(
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        CustomContainer(
                            width: 332.w,
                            height: 54.h,
                            radius: 14,
                            borderWidth: 1.2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/google.png",
                                  width: 22.w,
                                  height: 22.h,
                                ),
                                SizedBox(
                                  width: 6.w,
                                ),
                                const Text(
                                  "Continue with Google",
                                  style: TextStyle(
                                      color: manchesterRedColour,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 30.h,
                        ),
                        CustomContainer(
                            width: 332.w,
                            height: 54.h,
                            radius: 14,
                            borderWidth: 1.2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/apple_icon.png",
                                  width: 22.w,
                                  height: 22.h,
                                ),
                                SizedBox(
                                  width: 6.w,
                                ),
                                const Text(
                                  "Continue with Apple ID",
                                  style: TextStyle(
                                      color: manchesterRedColour,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 50.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 80.w),
                          child: const Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
