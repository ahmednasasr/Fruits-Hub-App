import 'package:ecommerce_app/core/helper_functions/build_error_bar.dart';
import 'package:ecommerce_app/core/services/get_it.dart';
import 'package:ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:ecommerce_app/features/auth/domain/repo/auth_repo.dart';
import 'package:ecommerce_app/features/auth/presentation/manger/cubits/login_cubit/login_cubit.dart';
import 'package:ecommerce_app/features/auth/presentation/manger/cubits/login_cubit/login_state.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/login_view_body.dart';
import 'package:ecommerce_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginView extends StatelessWidget {
  static const routename = "login";
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, "تسجيل دخول"),
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('تم التسجيل بنجاح!')),
              );
              Navigator.pushNamed(context, HomeView.routename);
            }

            if (state is LoginFailure) {
              build_error_bar(context, state.message);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is LoginLoading ? true : false,
              child:  LoginViewBody(),
            );
          },
        ),
      ),
    );
  }
}
