import 'package:flutter/material.dart';
import 'package:flutter_application_1/SecondRoute.dart';
import 'package:flutter_test/flutter_test.dart';

class formRegistration extends StatefulWidget {
  const formRegistration({Key? key}) : super(key: key);

  @override
  State<formRegistration> createState() => _formRegistrationState();
}

class _formRegistrationState extends State<formRegistration> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrPassword = new TextEditingController();
  int id = 1;
  String myphone = "-";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form Registrasi"),
        ),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                TextField(
                    controller: ctrUsername,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'username',
                    )),
                Container(
                  height: 20,
                ),
                TextField(
                    controller: ctrPassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'password',
                    )),
                SizedBox(
                  height: 10,
                ),
                Text("jenis kelamin"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: id,
                        onChanged: (value) {
                          setState(() {
                            id = 1;
                          });
                        }),
                    Text("laki-laki"),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 2,
                        groupValue: id,
                        onChanged: (value) {
                          setState(() {
                            id = 2;
                          });
                        }),
                    Text("perempuan"),
                  ],
                ),
                Text("phone : " + myphone),
                ElevatedButton(
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondRoute()),
                      );
                      print("hasil input phone number : " + result.toString());
                      setState(() {
                        myphone = result.toString();
                      });
                    },
                    child: Text("Phone Number")),
                Center(
                  child: Container(
                    width: 128,
                    child:
                        ElevatedButton(onPressed: () {}, child: Text("submit")),
                  ),
                ),
              ],
            )));
  }
}
