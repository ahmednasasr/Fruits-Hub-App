import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/exceptions.dart';
import 'package:ecommerce_app/core/errors/failure.dart';
import 'package:ecommerce_app/core/services/data_service.dart';
import 'package:ecommerce_app/core/services/firebase.dart';
import 'package:ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:ecommerce_app/features/auth/domain/entitys/user_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repo/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImp extends AuthRepo {
  final FirebaseAuthService firebaseauthService;
  final DatebaseService datebaseService;
  AuthRepoImp(this.firebaseauthService, this.datebaseService);

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    User? user;
    try {
      user = await firebaseauthService.createUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity = UserEntity(name: name, email: email, uId: user.uid);

      await adduser(user: userEntity);
      return right(userEntity);
    } on CustomException catch (e) {
      if (user != null) {
        await firebaseauthService.deleteUser();
      }
      return left(serverFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseauthService.signInWithEmailAndPassword(
          email: email, password: password);
      var userEntity = await getUserData(uId: user.uid);
      return right(userEntity);
    } on CustomException catch (e) {
      return left(serverFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    User? user;

    try {
      user = await firebaseauthService.signInWithGoogle();
      var userEntity = UserModel.fromFirebaseUser(user);
      return right(userEntity);
    } on CustomException catch (e) {
      if (user != null) {
        await firebaseauthService.deleteUser();
      }
      return left(serverFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    User? user;

    try {
      user = await firebaseauthService.signInWithGoogle();
      var userEntity = UserModel.fromFirebaseUser(user);
      return right(userEntity);
    } on CustomException catch (e) {
      if (user != null) {
        await firebaseauthService.deleteUser();
      }
      return left(serverFailure(e.message));
    }
  }

  @override
  Future adduser({required UserEntity user}) async {
    await datebaseService.addData(
        ColoectionName: "users", data: user.toMap(), documentId: user.uId);
  }

  @override
  Future<UserEntity> getUserData({required String uId}) async {
    var userDate = await datebaseService.getData(ColectionName: "users", uId: uId);
    return UserModel.fromJson(userDate as Map<String, dynamic>);
  }
}
