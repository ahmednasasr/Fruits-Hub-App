import 'package:ecommerce_app/features/auth/domain/entitys/user_entity.dart';

abstract class DatebaseService{
  Future<void> addData({required String ColoectionName,required Map<String,dynamic> data,String? documentId});
  Future<Map<String,dynamic>> getData({required String ColectionName, required String uId});
}