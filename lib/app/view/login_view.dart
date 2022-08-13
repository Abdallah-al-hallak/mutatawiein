import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mutatawiein/app/cubit/app_cubit.dart';
import 'package:mutatawiein/constants.dart';
import 'package:mutatawiein/router/route.gr.dart';

class LogInView extends StatelessWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: LogInPage(),
    );
  }
}

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        title: const Text('Mutatawiein'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RoundedButtons(
                onPressed: () {
                  print('login');
                },
                text: 'تسجيل الدخول'),
            const SizedBox(width: 0.0, height: 10.0),
            RoundedButtons(
                onPressed: () {
                  print(
                    'طلب تطوع',
                  );
                  AutoRouter.of(context).push(const FormRoute());
                },
                text: 'طلب تطوع'),
          ],
        ),
      ),
    );
  }
}

class RoundedButtons extends StatelessWidget {
  const RoundedButtons({Key? key, required this.onPressed, required this.text})
      : super(key: key);
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        primary: green,
        minimumSize: Size(width / 2, height * 0.07),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
