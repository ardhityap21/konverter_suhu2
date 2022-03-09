import 'package:flutter/material.dart';

class InputSuhu extends StatelessWidget {
  const InputSuhu({
    Key? key,
    required this.etInput,
  }) : super(key: key);

  final TextEditingController etInput;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: etInput,
      decoration: InputDecoration(
        labelText: 'Celcius',
        hintText: 'Masukan suhu dalam satuan Celcius',
      ),
      keyboardType: TextInputType.number,
    );
  }
}
