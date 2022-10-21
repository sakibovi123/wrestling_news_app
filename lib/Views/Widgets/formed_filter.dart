import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  final listOfThings = [
    'item1',
    'item2',
    'item3',
    'item4',
    'item5',
    'item6',
    'item7',
    'item8',
    'item9',
    'item10',
    'item11',
    'item12',
  ];
  String? selectedValue = "";
  _FilterState() {
    selectedValue = listOfThings[0];
  }
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5),
      child: Form(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                child: DropdownButtonFormField(
                  itemHeight: null,
                  isDense: true,
                  menuMaxHeight: 300,
                  icon: Icon(
                    Icons.arrow_drop_down_circle,
                    color: Colors.orange.shade500,
                  ),
                  value: selectedValue,
                  dropdownColor: Colors.white.withOpacity(0.9),
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    focusColor: Colors.black,
                    border: OutlineInputBorder(
                      gapPadding: double.infinity,
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 4,
                        style: BorderStyle.solid,
                      ),
                    ),
                    hintText: 'Search',
                  ),
                  items: listOfThings
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ),
                      )
                      .toList(),
                  onChanged: (tappedValue) {
                    setState(() {
                      selectedValue = tappedValue;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 5),
                child: const ElevatedButton(
                  onPressed: null,
                  child: Text('Submit'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
