import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mutatawiein/association/bloc/association_bloc.dart';
import 'package:mutatawiein/data/model/association.dart';
import 'package:mutatawiein/data/remote/dio_ass.dart';
import 'package:mutatawiein/data/remote/dio_login.dart';
import 'package:mutatawiein/router/route.gr.dart';

class AssociationPage extends StatefulWidget {
  const AssociationPage({Key? key}) : super(key: key);

  @override
  State<AssociationPage> createState() => _AssociationPageState();
}

class _AssociationPageState extends State<AssociationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الجمعيات'),
        centerTitle: true,
      ),
      body: BlocConsumer<AssociationBloc, AssociationState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => Text('orElse'),
            loading: (v) => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (ass) => AssociationCard(association: ass.association),
          );
        },
      ),
    );
  }
}

class AssociationCard extends StatefulWidget {
  final List<Association> association;
  const AssociationCard({Key? key, required this.association})
      : super(key: key);

  @override
  State<AssociationCard> createState() => _AssociationCardState();
}

class _AssociationCardState extends State<AssociationCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.association.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            subtitle: Text('ادخل لمعرفة التفاصيل'),
            onTap: () {
              context.router.push(
                  AssDetailsRoute(association: widget.association[index]));
              print('tap');
            },
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            title: Text('name : ${widget.association[index].name ?? 'name'}'),
            trailing: TextButton(
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      width: 2,
                      color: Color.fromARGB(255, 106, 189, 109),
                    ),
                  ),
                ),
                onPressed: () async {
                  print('began');
                  await DioAssociation()
                      .addVolToAss(widget.association[index].id ?? 1);
                },
                child: Text('انضمام')),
          ),
        );
      },
    );
  }
}
