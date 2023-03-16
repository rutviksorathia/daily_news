import 'package:daily_news/ui/views/auth/auth_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewModel>.reactive(
      viewModelBuilder: () => AuthViewModel(),
      onViewModelReady: (model) {},
      builder: (context, model, child) {
        return Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
                child: Column(
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Enter the Email',
                      ),
                      controller: model.emailController,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Enter the Password',
                      ),
                      controller: model.passwordController,
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: model.submitLoginButtonTap,
                      child: const Text('Login'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
