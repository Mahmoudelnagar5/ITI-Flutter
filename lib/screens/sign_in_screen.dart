import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:iti/screens/main_view.dart';
import 'package:iti/screens/sign_up_screen.dart';
import 'package:iti/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "login_screen";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: FractionallySizedBox(
          heightFactor: 0.7,
          widthFactor: 1.0,
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFF007E9F),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: SingleChildScrollView(
              child: FadeInLeft(
                duration: const Duration(milliseconds: 500),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'أهلاً بك، نحن سعداء بعودتك\nمن فضلك قم بتسجيل الدخول',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          height: 1.6,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30),
                      CustomTextField(
                        hintText: 'رقم الهاتف',
                        prefixIcon: Icons.person_outline,
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        hintText: 'كلمة المرور',
                        prefixIcon: Icons.lock_outline,
                        suffixIcon: Icons.visibility_outlined,
                        obscureText: true,
                      ),
                      const SizedBox(height: 10),

                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'هل نسيت كلمة المرور ؟',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 3,
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              // Handle login logic here
                              // For example, navigate to the home screen
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MainView(),
                                ),
                              );
                            }
                          },
                          child: const Text(
                            'تسجيل الدخول',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              'إنشاء حساب',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Text(
                            'ليس لديك حساب ؟ ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
