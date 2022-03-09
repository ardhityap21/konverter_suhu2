import 'package:flutter/material.dart';

class TombolKonversiSuhu extends StatelessWidget {
  const TombolKonversiSuhu({
    Key? key,
    required this.konversiSuhu,
  }) : super(key: key);
  final Function konversiSuhu;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size.fromHeight(50),
          ),
          onPressed: () {
            konversiSuhu();
          },
          child: Text('Konversi Suhu'),
        ),
      ),
    );
  }
}
