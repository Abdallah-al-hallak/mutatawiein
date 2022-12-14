import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:mutatawiein/data/model/association.dart';

import '../../data/remote/dio_ass.dart';

class AssDetails extends StatelessWidget {
  const AssDetails({Key? key, required this.association}) : super(key: key);
  final Association association;
  @override
  Widget build(BuildContext context) {
    ScrollController controller1 = ScrollController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          association.name ?? 'name',
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 30,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
              child: const Text(
                'فعاليات الجمعية',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
                child: ExpandableNotifier(
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ExpandablePanel(
                      collapsed: ExpandableButton(
                        child: Container(
                          key: Key('g'),
                          padding: const EdgeInsets.all(10),
                          height: 40,
                          width: double.infinity,
                          color: index.isEven
                              ? Colors.grey[300]
                              : Colors.grey[100],
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'name : ${association.events![index].name ?? ''}',
                              ),
                            ],
                          ),
                        ),
                      ),
                      expanded: ExpandableButton(
                        child: Column(
                          key: Key('c'),
                          children: [
                            Container(
                              key: Key('l'),
                              width: double.infinity,
                              padding: const EdgeInsets.all(10),
                              height: 40,
                              color: index.isEven
                                  ? Colors.grey[200]
                                  : Colors.grey[100],
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'name : ${association.events![index].name ?? ''}',
                                  ),
                                ],
                              ),
                            ),
                            Text('تفاصيل الفعالية'),
                            SizedBox(
                              height: 75,
                              width: double.infinity,
                              child: RawScrollbar(
                                isAlwaysShown: true,
                                crossAxisMargin: -2,
                                mainAxisMargin: 2,
                                thickness: 5,
                                thumbColor: Colors.grey,
                                controller: controller1,
                                child: ListView.separated(
                                  key: Key('b'),
                                  itemCount: association
                                      .events![index].eventTasks!.length,
                                  separatorBuilder: (context, i) =>
                                      const Divider(
                                          color: Colors.black, thickness: 2),
                                  itemBuilder: (context, i) => Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'name : ${association.events![index].eventTasks![i].taskName ?? 'b'}',
                                        ),
                                        TextButton(
                                            style: TextButton.styleFrom(
                                              shape:
                                                  const RoundedRectangleBorder(
                                                side: BorderSide(
                                                  width: 2,
                                                  color: Color.fromARGB(
                                                      255, 130, 137, 131),
                                                ),
                                              ),
                                            ),
                                            onPressed: () async {
                                              print(association
                                                  .events![index].name);
                                              await DioAssociation()
                                                  .addVolToEveTask(association
                                                          .events![index]
                                                          .eventTasks![i]
                                                          .id ??
                                                      1);
                                            },
                                            child: const Text(
                                              'الانضمام للمهمة',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: association.events!.length),
            ))
          ],
        ),
      ),
    );
  }
}
