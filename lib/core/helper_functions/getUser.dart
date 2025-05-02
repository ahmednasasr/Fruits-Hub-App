import 'dart:convert';

import 'package:ecommerce_app/core/services/shared_preferences_singleton.dart';
import 'package:ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:ecommerce_app/features/auth/domain/entitys/user_entity.dart';

UserEntity getUser() {
  var jsonString = Prefs.getString("UserData");
  var UserEntity = UserModel.fromJson(jsonDecode(jsonString));
  return UserEntity;

}