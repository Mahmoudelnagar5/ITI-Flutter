import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti/bloc/sign_up_bloc/sign_up_bloc.dart';
import 'package:iti/screens/otp_screen.dart';
import 'package:iti/screens/sign_in_screen.dart';
import 'package:iti/widgets/custom_text_field.dart';

import '../core/utils/app_validtion.dart';
import '../core/widgets/toast_message.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpBloc(),
      child: Scaffold(
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
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'مرحباً بك، نحن سعداء بانضمامك إلينا\nمن فضلك قم بإنشاء حساب',
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
                          controller: nameController,

                          hintText: 'الاسم',
                          suffixIcon: Icons.person_outline,
                        ),
                        const SizedBox(height: 16),
                        CustomTextField(
                          validator: AppValidtion.validationEmailMethod(
                            context: context,
                          ),
                          controller: emailController,
                          hintText: 'البريد الإلكتروني',
                          suffixIcon: Icons.email_outlined,
                        ),
                        const SizedBox(height: 16),
                        CustomTextField(
                          validator: AppValidtion.validationPasswordMethod(
                            context: context,
                          ),
                          controller: passwordController,
                          hintText: 'كلمة المرور',
                          suffixIcon: Icons.lock_outline,
                          prefixIcon: Icons.visibility_outlined,
                          obscureText: true,
                        ),
                        const SizedBox(height: 16),
                        CustomTextField(
                          validator:
                              AppValidtion.validationConfirmPasswordMethod(
                                context: context,
                                passwordController: passwordController,
                              ),
                          controller: confirmPasswordController,
                          hintText: 'تأكيد كلمة المرور',
                          suffixIcon: Icons.lock_outline,
                          prefixIcon: Icons.visibility_outlined,
                          obscureText: true,
                        ),

                        const SizedBox(height: 24),
                        BlocConsumer<SignUpBloc, SignUpState>(
                          listener: (context, state) {
                            if (state is SignUpFailure) {
                              showToastMessage(state.message, Colors.red);
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   SnackBar(content: Text(state.message)),
                              // );
                            }
                            if (state is SignUpSuccess) {
                              showToastMessage(
                                'تم إنشاء الحساب بنجاح',
                                Colors.green,
                              );
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   const SnackBar(
                              //     content: Text('تم إنشاء الحساب بنجاح'),
                              //   ),
                              // );
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const OtpScreen(),
                                ),
                              );
                            }
                          },
                          builder: (context, state) {
                            return SizedBox(
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
                                    context.read<SignUpBloc>().add(
                                      SignUpButtonPressedEvent(
                                        name: nameController.text,
                                        email: emailController.text,
                                        password: passwordController.text,
                                        confirmPassword:
                                            confirmPasswordController.text,
                                      ),
                                    );
                                  }
                                },
                                child: state is SignUpLoading
                                    ? const CircularProgressIndicator()
                                    : const Text(
                                        'إنشاء حساب',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                              ),
                            );
                          },
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
                                    builder: (context) => const LoginScreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                'تسجيل الدخول',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Text(
                              'هل لديك حساب بالفعل ؟ ',
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
      ),
    );
  }
}
