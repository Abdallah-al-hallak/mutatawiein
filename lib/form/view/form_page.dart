import 'package:flutter/material.dart';
import 'package:mutatawiein/form/view/widgets/date.dart';
import 'package:mutatawiein/form/view/widgets/drob_down.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  int activeStep = 0; // Initial step set to 0.

  // OPTIONAL: can be set directly.
  int dotCount = 5;
  int _index = 0;
  List<String> radio = ['boy', 'girl'];
  static const list = ['boy', 'girl'];
  DateTime now = DateTime.now();
  final _formKey = [
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>()
  ];
  String selectedValue = '';
  TextEditingController tripleName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stepper(
        elevation: 0,
        currentStep: _index,
        onStepCancel: () {
          if (_index > 0) {
            setState(() {
              _index -= 1;
            });
          }
        },
        onStepContinue: () {
          if (_formKey[_index].currentState!.validate()) {
            if (_index < (getSteps().length - 1)) {
              print('tap');
              setState(() {
                _index += 1;
              });
            }
          }
        },
        type: StepperType.horizontal,
        steps: getSteps(),
      ),
    );
  }

  List<Step> getSteps() {
    return [
      Step(
          isActive: _index == 0 ? true : false,
          state: _index == 0 ? StepState.indexed : StepState.complete,
          title: const Text('المعلومات الشخصية'),
          content: SingleChildScrollView(
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: _formKey[0],
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        now = await selectDate(context, now);
                        setState(() {});
                      },
                      child: Text(now.toString())),
                  FormTextField(
                    text: 'Name',
                    controller: tripleName,
                  ),
                  const SizedBox(width: 0.0, height: 10.0),
                  FormTextField(
                    text: 'مكان القيد',
                    controller: tripleName,
                  ),
                  const SizedBox(width: 0.0, height: 10.0),
                  FormTextField(
                    text: 'مكان الولادة',
                    controller: tripleName,
                  ),
                  DropDownCategory(
                    productCategory: const [],
                    func: (v) {},
                  ),
                  DropDownCategory(
                    productCategory: const [],
                    func: (v) {},
                  ),
                  buildWidget(),
                ],
              ),
            ),
          )),
      Step(
          isActive: _index == 1 ? true : false,
          state: _index <= 1 ? StepState.indexed : StepState.complete,
          title: const Text('soka'),
          content: SecondView(
            globalKey: _formKey[1],
          )),
      Step(
          isActive: _index == 2 ? true : false,
          state: _index <= 2 ? StepState.indexed : StepState.complete,
          title: const Text('soka'),
          content: SecondView(
            globalKey: _formKey[2],
          )),
    ];
  }

  Widget buildWidget() {
    return Row(
        children: radio.map((e) {
      return Expanded(
        child: RadioListTile<String>(
            toggleable: true,
            title: Text('أنثى'),
            value: e,
            groupValue: selectedValue,
            onChanged: (v) {
              // selectedValue == v ? selectedValue = '' : selectedValue;
              setState(() {
                selectedValue = v ?? '';
              });
            }),
      );
    }).toList());
  }
}

class FormTextField extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  const FormTextField({Key? key, required this.text, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'required';
        }
      },
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class SecondView extends StatefulWidget {
  final GlobalKey globalKey;
  SecondView({Key? key, required this.globalKey}) : super(key: key);

  @override
  State<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {
  final TextEditingController info = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
          key: widget.globalKey,
          child: Column(
            children: [
              FormTextField(
                text: 'Name',
                controller: info,
              ),
              const SizedBox(width: 0.0, height: 10.0),
              FormTextField(
                text: 'مكان القيد',
                controller: info,
              ),
              const SizedBox(width: 0.0, height: 10.0),
              FormTextField(
                text: 'مكان الولادة',
                controller: info,
              ),
            ],
          )),
    );
  }
}
