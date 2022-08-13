import 'package:flutter/material.dart';
import '../form.dart';

class FormView extends StatelessWidget {
  const FormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FormBloc(),
      child: const FormPage(),
    );
  }
}
