import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:iti/widgets/custom_text_field.dart';

import 'sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 60),
                FadeInLeft(
                  duration: const Duration(milliseconds: 500),
                  child: Text(
                    'Welcome Back',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                  ),
                ),
                FadeInLeft(
                  duration: const Duration(milliseconds: 500),
                  child: Text(
                    'Enter your credentials to login',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 50),
                CustomTextField(
                  hintText: 'Username',
                  prefixIcon: Icon(Icons.person, color: Colors.grey[600]),
                  onChanged: (value) {},
                ),
                SizedBox(height: 16),

                CustomTextField(
                  hintText: 'Password',
                  obscureText: true,
                  prefixIcon: Icon(Icons.lock, color: Colors.grey[600]),
                  onChanged: (value) {},
                ),
                SizedBox(height: 16),

                FadeInUp(
                  duration: const Duration(milliseconds: 500),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: const Color(0xff9B28B2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Login Successful')),
                        );
                      }
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                FadeInUp(
                  duration: const Duration(milliseconds: 500),
                  child: TextButton(
                    onPressed: null,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Color(0xff9B28B2), fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(height: 40),

                FadeInUp(
                  duration: const Duration(milliseconds: 500),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account? ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Color(0xff9B28B2),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
