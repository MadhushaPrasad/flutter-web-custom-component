import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  CustomDropDown({super.key, required this.list});

  late List<String> list;

  @override
  State<StatefulWidget> createState() => _CustomDropDownState(list);
}

class _CustomDropDownState extends State<CustomDropDown> {
  _CustomDropDownState(this.listDetails);

  late List<String> listDetails;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton<String>(
            value: listDetails.first,
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            style: const TextStyle(color: Colors.black),
            underline: Container(
              height: 2,
              color: Colors.white,
            ),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                listDetails.first = value!;
              });
            },
            items: listDetails.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
