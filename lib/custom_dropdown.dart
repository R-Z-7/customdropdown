import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final String hintName;
  final List<String> Items;

  CustomDropDown({required this.hintName, required this.Items});
  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? dropdownvalue;

  List<DropdownMenuItem<String>> buildDropdownMenuItems(List list) {
    List<DropdownMenuItem<String>> dropDownItems = [];
    list.forEach((value) {
      dropDownItems.add(DropdownMenuItem<String>(
        value: value,
        child: Text(
          value,
          style: TextStyle(color: Colors.blue),
        ),
      ));
    });

    return dropDownItems;
  }

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      builder: (FormFieldState<String> state) {
        return InputDecorator(
          decoration: InputDecoration(
            hintText: widget.hintName,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          isEmpty: dropdownvalue == '',
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              hint: Text(
                widget.hintName,
                style: TextStyle(color: Colors.blue),
              ),
              value: dropdownvalue,
              isDense: true,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue;
                });
              },

              //call buildDropdownMenuItems() here and pass the list of Strings as attribue
              items: buildDropdownMenuItems(widget.Items),
            ),
          ),
        );
      },
    );
  }
}






































// class AppDropdownInput<T> extends StatelessWidget {
//   final String hintText;
//   final List<T> options;
//   final T value;
//   final String Function(T) getLabel;
//   final void Function(String T) onChanged;

//   AppDropdownInput({
//     this.hintText = 'Please select an Option',
//     this.options = const [],
//     required this.getLabel,
//     required this.value,
//     required this.onChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return FormField<T>(
//       builder: (FormFieldState<T> state) {
//         return InputDecorator(
//           decoration: InputDecoration(
//             contentPadding:
//                 EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
//             // labelStyle: textStyle,
//             errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
//             hintText: hintText,
//             labelText: hintText,
//             border:
//                 OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
//           ),
//           isEmpty: value == null || value == '',
//           child: DropdownButtonHideUnderline(
//             child: DropdownButton<T>(
//               value: value,
//               isDense: true,
//               onChanged: onChanged,
//               items: options.map((T value) {
//                 return DropdownMenuItem<T>(
//                   value: value,
//                   child: Text(getLabel(value)),
//                 );
//               }).toList(),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }








// class CustDrop extends StatefulWidget {
//   final TextStyle? style;
//   final Widget? hint;
//   f
//   List<DropdownMenuItem<Object?>> items;

//   CustDrop({super.key, this.style, this.hint, required this.items});

//   @override
//   State<CustDrop> createState() => _CustDropState();
// }

// class _CustDropState extends State<CustDrop> {
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton(
//       items: const [],
//       onChanged: () {},
//     );
//   }
// }
