import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:mutatawiein/form/form.dart';
import 'package:mutatawiein/router/route.gr.dart';

import '../cubit/log_in_cubit.dart';

class LogInPagee extends StatelessWidget {
  const LogInPagee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogInCubit(),
      child: LoginVieww(),
    );
  }
}

class LoginVieww extends StatefulWidget {
  const LoginVieww({Key? key}) : super(key: key);

  @override
  State<LoginVieww> createState() => _LoginViewwState();
}

class _LoginViewwState extends State<LoginVieww> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<LogInCubit, LogInState>(
        listener: (context, state) {
          print(state);
          if (state is SuccessfulyLogged) {
            print('succes');

            AutoRouter.of(context).replace(const AssociationRoute());
          }
        },
        builder: (context, state) {
          return state.map(
            initial: (value) => BuildWidgetView(),
            fetching: (value) =>
                const Center(child: CircularProgressIndicator()),
            success: (success) {
              return const Text('');
            },
            failed: (value) => BuildWidgetView(),
          );
        },
      ),
    );
  }
}

class BuildWidgetView extends StatefulWidget {
  const BuildWidgetView({Key? key}) : super(key: key);

  @override
  State<BuildWidgetView> createState() => _BuildWidgetViewState();
}

class _BuildWidgetViewState extends State<BuildWidgetView> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              LottieBuilder.asset('assets/lottie/zakat.json'),
              FormTextField(
                text: 'ادخل اسم المستخدم',
                controller: usernameController,
              ),
              const SizedBox(width: 0.0, height: 20.0),
              FormTextField(
                text: 'ادخل كلمة المرور',
                controller: passwordController,
              ),
              const SizedBox(width: 0.0, height: 20.0),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(minimumSize: Size(100, 40)),
                  onPressed: () {
                    context.read<LogInCubit>().logIn(
                        usernameController.text, passwordController.text);
                  },
                  child: const Text('تسجيل الدخول'))
            ],
          ),
        ),
      ),
    );
  }
}
