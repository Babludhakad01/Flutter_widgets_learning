import 'package:flutter_bloc/flutter_bloc.dart';

//Login State Hierarchy
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginFailed extends LoginState {}

// LoginCubit Handles fake Login Logic
class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  void login(String username, String password) async {
    emit(LoginLoading()); // start Loading
    await Future.delayed(const Duration(seconds: 2));

    if (username == 'admin' && password == '123') {
      emit(LoginSuccess()); // Login Successful
    } else {
      emit(LoginFailed());
    }
  }
}
