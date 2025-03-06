import 'package:ecommerce_app/core/helper_functions/build_error_bar.dart';
import 'package:ecommerce_app/core/services/get_it.dart';
import 'package:ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:ecommerce_app/features/auth/domain/repo/auth_repo.dart';
import 'package:ecommerce_app/features/auth/presentation/manger/cubits/sign_up_cubit/signin_cubit.dart';
import 'package:ecommerce_app/features/auth/presentation/manger/cubits/sign_up_cubit/signin_state.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupView extends StatelessWidget {
  static const routename = "SignUp";

  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, "حساب جديد"),
        body: BlocConsumer<SignupCubit, SignupState>(
          listener: (context, state) {
            if (state is SignupSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('تم انشاء الحساب بنجاح')),
              );
              Navigator.pop(context);
            }

            if (state is SignupFailure) {
              build_error_bar(context, state.message);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is SignupLoading ? true : false,
              child: const SignupViewBody(),
            );
          },
        ),
      ),
    );
  }


  }

