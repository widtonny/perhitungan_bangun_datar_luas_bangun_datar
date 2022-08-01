import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class kalkulator extends StatefulWidget {
  const kalkulator({Key? key}) : super(key: key);

  @override
  State<kalkulator> createState() => _kalkulatorState();
}

class _kalkulatorState extends State<kalkulator> {
  TextEditingController ctrPanjang = new TextEditingController();
  TextEditingController ctrLebar = new TextEditingController();
  TextEditingController ctrHasil = new TextEditingController();
  int id = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("kalkulator persegi"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              controller: ctrPanjang,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukan Panjang persegi',
              ),
            ),
            Container(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'tolong masuk kan angka';
                }
                return null;
              },
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              controller: ctrLebar,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukan Lebar persegi',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Container(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (ctrPanjang.text.isNotEmpty &&
                          ctrLebar.text.isNotEmpty) {
                        ctrHasil.text = (int.parse(ctrPanjang.text) *
                                int.parse(ctrLebar.text))
                            .toString();
                      } else {
                        Alert(
                          context: context,
                          type: AlertType.error,
                          title: "Tolong Masukan Angka",
                          //desc: "Selamat anda berhasil login",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "Lanjut",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              onPressed: () => Navigator.pop(context),
                            )
                          ],
                        ).show();
                        return;
                      }
                    });
                  },
                  child: Text("HASIL")),
            )),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Hasil hitungan : ${ctrHasil.text}cm",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
