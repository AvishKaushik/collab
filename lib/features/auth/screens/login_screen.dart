import 'package:collab/core/common/loader.dart';
import 'package:collab/features/auth/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:collab/core/common/sign_in_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(authControllerProvider);
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'Welcome to the Community',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )),
        ],
      ),
      body: isLoading
          ? const Loader()
          : const Column(
              children: [
                SizedBox(height: 30),
                Text(
                  'Dive into anything',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
                SizedBox(height: 30),
                SignInButton()
              ],
            ),
    );
  }
}
