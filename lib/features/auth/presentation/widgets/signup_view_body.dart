import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/core/widgets/custome_text_field.dart';
import 'package:ecommerce_app/features/auth/presentation/manger/cubits/sign_up_cubit/signin_cubit.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/have_account.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  bool obsecured = true;
  late String username, email, password;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late bool istermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Form(
            key: formKey,
            autovalidateMode: autovalidateMode,
            child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                CustomeTextFormField(
                  onSaved: (value) {
                    username = value!;
                  },
                  hintText: "الاسم كامل",
                  textInputType: TextInputType.name,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomeTextFormField(
                  onSaved: (value) {
                    email = value!;
                  },
                  hintText: "البريد الإلكتروني",
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomeTextFormField(
                  onSaved: (value) {
                    password = value!;
                  },
                  obscureText: obsecured,
                  hintText: "كلمة المرور",
                  textInputType: TextInputType.visiblePassword,
                  suffexIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        obsecured = !obsecured;
                      });
                    },
                    child: obsecured
                        ? Icon(
                            Icons.visibility_off,
                            color: Color(0xffC9CECF),
                          )
                        : Icon(
                            Icons.remove_red_eye,
                            color: Color(0xffC9CECF),
                          ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TermsAndConditions(
                  onchanged: (value) {
                    setState(() {
                      istermsAccepted = value;
                    });
                  },
                ),
                SizedBox(
                  height: 30,
                ),

                CustomButton(
                  onpressed: () {
                    if (!istermsAccepted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text(
                                "يجب الموافقة على الشروط والأحكام للاستمرار")),
                      );
                      return;
                    }

                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      context
                          .read<SignupCubit>()
                          .createUserWithEmailAndPassword(
                              email, password, username);
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                  text: "إنشاء حساب جديد",
                ),
                SizedBox(
                  height: 26,
                ),
                HaveAccount()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
