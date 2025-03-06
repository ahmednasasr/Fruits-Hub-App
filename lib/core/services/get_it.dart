import 'package:ecommerce_app/core/services/data_service.dart';
import 'package:ecommerce_app/core/services/firebase.dart';
import 'package:ecommerce_app/core/services/firestore_servece.dart';
import 'package:ecommerce_app/features/auth/data/repo/auth_repo_imp.dart';
import 'package:ecommerce_app/features/auth/domain/repo/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<DatebaseService>(FirestoreServece());

  getIt.registerSingleton<AuthRepo>(
      AuthRepoImp(getIt<FirebaseAuthService>(), getIt<DatebaseService>()));
}
