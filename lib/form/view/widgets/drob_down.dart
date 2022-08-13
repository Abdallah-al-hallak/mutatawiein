import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../form.dart';

class DropDownCategoryPage extends StatelessWidget {
  List<dynamic> productCategory;
  Function(String category) func;
  DropDownCategoryPage(
      {Key? key, required this.productCategory, required this.func})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FormBloc(),
      child: DropDownCategory(
        productCategory: productCategory,
        func: func,
      ),
    );
  }
}

class DropDownCategory extends StatefulWidget {
  List<dynamic> productCategory;
  Function(String category) func;
  DropDownCategory(
      {Key? key, required this.productCategory, required this.func})
      : super(key: key);

  @override
  State<DropDownCategory> createState() => _DropDownCategoryState();
}

class _DropDownCategoryState extends State<DropDownCategory> {
  String? selectedValue;
  List<DropDownDynamic> data = [
    DropDownDynamic(displayName: 'Abdol', id: 1),
    DropDownDynamic(displayName: 'kira', id: 2),
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
        child: BlocBuilder<FormBloc, FormStateBloc>(
      // buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        // if (state is ProductscategoryLoaded) {
        //   print('CategoryLoaded');

        //   data = context.select(
        //       (ProductsBloc bloc) => state.productsCategory.result.data);
        // }
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  // widget.func('');
                },
                icon: const Icon(Icons.close)),
            DropdownButton2(
              iconSize: 16,
              dropdownOverButton: true,
              isExpanded: false,
              hint: Text(
                selectedValue ?? 'اختر', // ❤
                style: TextStyle(
                  fontSize: 13,
                  color: Theme.of(context).hintColor,
                ),
              ),
              items: data
                  .map(
                    (item) => DropdownMenuItem<String>(
                      value: item.displayName.toString(),
                      child: Text(
                        item.displayName,
                        style: const TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  )
                  .toList(),
              value: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value as String;
                });
                print(selectedValue);
                widget.func(selectedValue ?? '');
              },
              buttonHeight: 40,
              buttonWidth: MediaQuery.of(context).size.width * 0.2,
              itemHeight: 40,
            ),
          ],
        );
      },
    ));
  }
}

class DropDownDynamic {
  final String displayName;
  final int id;
  DropDownDynamic({
    required this.displayName,
    required this.id,
  });
}
