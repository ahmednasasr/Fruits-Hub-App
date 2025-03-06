import 'package:ecommerce_app/core/services/firebase.dart';
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_text_style.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/core/widgets/custome_text_field.dart';
import 'package:ecommerce_app/features/auth/presentation/manger/cubits/login_cubit/login_cubit.dart';
import 'package:ecommerce_app/features/auth/presentation/manger/cubits/sign_up_cubit/signin_cubit.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/dont_have_account.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/login_view_body.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/or_divider.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginViewBody extends StatelessWidget {
  LoginViewBody({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              CustomeTextFormField(
                controller: emailController,
                hintText: "البريد الإلكتروني",
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 16,
              ),
              CustomeTextFormField(
                controller: passwordController,
                hintText: "كلمة المرور",
                textInputType: TextInputType.visiblePassword,
                suffexIcon: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xffC9CECF),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("نسيت كلمة المرور؟",
                      style: TextStyles.SemiBold13.copyWith(
                          color: AppColors.LightPrimaryColor)),
                ],
              ),
              SizedBox(
                height: 33,
              ),
              CustomButton(
                  onpressed: () {
                    context.read<LoginCubit>().signinWithEmailAndPassword(
                        emailController.text, passwordController.text);
                  },
                  text: "تسجيل دخول"),
              SizedBox(
                height: 33,
              ),
              const DontHaveAccountWidget(),
              SizedBox(
                height: 33,
              ),
              OnDivider(),
              SizedBox(
                height: 31,
              ),
              SocialLoginButton(
                title: "تسجيل بواسطة جوجل",
                onPressed: () {
                  context.read<SignupCubit>().signInWithGoogle();
                },
                image: "assets/images/3.svg",
              ),
              SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                title: "تسجيل بواسطة أبل",
                onPressed: () {},
                image: "assets/images/1.svg",
              ),
              SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                title: "تسجيل بواسطة فيسبوك",
                onPressed: () {
                  context.read<SignupCubit>().signInWithFaceBook();
                },
                image: "assets/images/2.svg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
