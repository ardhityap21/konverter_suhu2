import 'package:flutter/material.dart';

class TargetKonversiSuhu extends StatelessWidget {
  const TargetKonversiSuhu({
    Key? key,
    required this.SelectedDropDown,
    required this.listSatuanSuhu,
    required this.onDropDownChanged,
  }) : super(key: key);

  final String SelectedDropDown;
  final List<String> listSatuanSuhu;
  final Function onDropDownChanged;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: SelectedDropDown,
      items: listSatuanSuhu.map((String value) {
        return DropdownMenuItem(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) {
        onDropDownChanged(value);
      },
    );
  }
}
