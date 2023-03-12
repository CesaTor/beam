import 'package:auto_route/auto_route.dart';
import 'package:beam/core/routes/app_router.gr.dart';
import 'package:beam/screens/login/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: const LoginView(),
    );
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final user = TextEditingController();
    final pass = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Logo(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: user,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: TextField(
                controller: pass,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Forgot password?',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: [
                  ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      context.router.push(const HomeRoute());
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Signup'),
                    onPressed: () {
                      context.router.push(const HomeRoute());
                    },
                  ),
                ],
              ),
            )
          ],
        ),
        // floatingActionButtonLocation:
        // FloatingActionButtonLocation.centerFloat,
        // floatingActionButton: SizedBox(
        //   width: 200,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       ElevatedButton(
        //         child: Text('Login'),
        //         onPressed: () {},
        //       ),
        //       const SizedBox(
        //         width: 10,
        //       ),
        //       ElevatedButton(
        //         child: Text('Signup'),
        //         onPressed: () {},
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Text(
          'BEAM',
          style: GoogleFonts.dosis(
            letterSpacing: 8,
            fontSize: 80,
          ),
        ),
      ),
    );
  }
}
