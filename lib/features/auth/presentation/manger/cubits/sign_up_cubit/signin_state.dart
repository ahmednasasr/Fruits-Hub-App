import 'package:ecommerce_app/features/auth/domain/entitys/user_entity.dart';
import 'package:flutter/foundation.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupLoading extends SignupState {}

final class SignupSuccess extends SignupState {
  final UserEntity userEntity;

  SignupSuccess({required this.userEntity});
}

final class SignupFailure extends SignupState {
  final String message;

  SignupFailure({required this.message});
}
