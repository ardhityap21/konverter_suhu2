import 'package:flutter/material.dart';
import 'package:konverter_suhu2/Widget/HasilKonversiSuhu.dart';
import 'package:konverter_suhu2/Widget/InputSuhu.dart';
import 'package:konverter_suhu2/Widget/RiwayatSuhu.dart';
import 'package:konverter_suhu2/Widget/TargetKonversiSuhu.dart';
import 'package:konverter_suhu2/Widget/TombolKonversiSuhu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController etInput = TextEditingController();
  List<String> listSatuanSuhu = ['Kelvin', 'Reamur', 'Fahrenhait'];
  String SelectedDropDown = 'Kelvin';
  int HasilPerhitungan = 0;
  List listHasil = [];
  void KonversiSuhu() {
    return setState(() {
      if (etInput.text.isNotEmpty) {
        switch (SelectedDropDown) {
          case "Kelvin":
            HasilPerhitungan = int.parse(etInput.text) + 273;
            break;
          case "Reamur":
            HasilPerhitungan = (4 * int.parse(etInput.text) / 5) as int;
            break;
          case "Fahrenhait":
            HasilPerhitungan = (9 * int.parse(etInput.text) / 5) as int;
            break;
          default:
        }
        listHasil.add(" Konversi dari " +
            etInput.text +
            ' Celcius ke ' +
            SelectedDropDown +
            ' Dengan hasil ' +
            HasilPerhitungan.toString());
      }
    });
  }

  void onDropDownChanged(Object? value) {
    return setState(() {
      SelectedDropDown = value.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Konversi Suhu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Konveri Suhu'),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              InputSuhu(etInput: etInput),
              TargetKonversiSuhu(
                SelectedDropDown: SelectedDropDown,
                listSatuanSuhu: listSatuanSuhu,
                onDropDownChanged: onDropDownChanged,
              ),
              HasilKonversiSuhu(HasilPerhitungan: HasilPerhitungan),
              TombolKonversiSuhu(
                konversiSuhu: KonversiSuhu,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text('Riwayat Konversi Suhu'),
              ),
              RiwayatSuhu(listHasil: listHasil)
            ],
          ),
        ),
      ),
    );
  }
}
