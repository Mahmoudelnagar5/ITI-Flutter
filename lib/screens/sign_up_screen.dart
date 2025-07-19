import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:iti/widgets/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                    'Sign Up',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 12),
                FadeInLeft(
                  duration: const Duration(milliseconds: 500),
                  child: Text(
                    'Create your account',
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
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email, color: Colors.grey[600]),
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

                CustomTextField(
                  hintText: 'Confirm Password',
                  obscureText: true,
                  prefixIcon: Icon(Icons.lock, color: Colors.grey[600]),
                  onChanged: (value) {},
                ),
                SizedBox(height: 24),

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
                        // Handle sign up logic here
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Sign Up Successful')),
                        );
                      }
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Text(
                  'Or',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 16),
                FadeInUp(
                  duration: const Duration(milliseconds: 500),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Color(0xff9B28B2)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Sign in with Google',
                      style: TextStyle(
                        color: Color(0xff9B28B2),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                FadeInUp(
                  duration: const Duration(milliseconds: 500),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Login',
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
