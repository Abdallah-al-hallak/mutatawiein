import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mutatawiein/association/bloc/association_bloc.dart';
import 'package:mutatawiein/association/view/ass_page.dart';
import 'package:mutatawiein/data/repository/ass_repo.dart';

class AssociationView extends StatelessWidget {
  const AssociationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AssociationBloc(AssRepo())..add(const AssociationEvent.fetching()),
      child: const AssociationPage(),
    );
  }
}
