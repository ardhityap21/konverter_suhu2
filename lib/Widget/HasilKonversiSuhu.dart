import 'package:flutter/material.dart';

class HasilKonversiSuhu extends StatelessWidget {
  const HasilKonversiSuhu({
    Key? key,
    required this.HasilPerhitungan,
  }) : super(key: key);

  final int HasilPerhitungan;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            'Hasil',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            '$HasilPerhitungan',
            style: TextStyle(fontSize: 32),
          ),
        ],
      ),
    );
  }
}
