import 'package:demo_project/Bloc_Widgets/cubits/login_cubit.dart';
import 'package:demo_project/Bloc_Widgets/screens/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    // BlocConsumer: rebuilds UI + handles side effects
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          // Side effect : Navigation or Snackbar

          if (state is LoginSuccess) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(const SnackBar(content: Text("Login Successful")));
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CounterScreen()),
            );
          } else if (state is LoginFailed) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("Login Failed..!")));
          }
        },
        builder: (context, state) {
          // UI rebuilding based on state
          if (state is LoginLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(labelText: "Username"),
                ), TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(labelText: "Password"),
                ),
                SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    // Trigger Login Action in Cubit
                    context.read<LoginCubit>().login(
                      usernameController.text,
                      passwordController.text,
                    );
                  },
                  child: const Text("Login"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
