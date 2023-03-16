import 'package:daily_news/model/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthViewModel extends BaseViewModel {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  List<UserRegistration> userRegistration = [];

  Future<void> submitLoginButtonTap() async {
    var response = await apiRequestBody(
      body: ApiRequestRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    print(response.token);
  }
}
