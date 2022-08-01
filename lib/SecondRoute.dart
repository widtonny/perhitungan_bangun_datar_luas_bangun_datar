import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  TextEditingController ctrInputNomer = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second route"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(children: [
          TextField(
            keyboardType: TextInputType.number,
            controller: ctrInputNomer,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Input Number',
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context, ctrInputNomer.text);
              },
              child: Text("Submit"))
        ]),
      ),
    );
  }
}
