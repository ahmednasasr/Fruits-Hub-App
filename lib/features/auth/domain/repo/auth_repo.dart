import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failure.dart';
import 'package:ecommerce_app/features/auth/domain/entitys/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password,String name);

  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword(
      String email, String password);

  Future<Either<Failure, UserEntity>> signInWithGoogle();
  Future<Either<Failure, UserEntity>> signInWithFacebook();

  Future adduser({required UserEntity user});
  Future saveUserData({required UserEntity user});

  Future <UserEntity>getUserData({required String uId});
}
