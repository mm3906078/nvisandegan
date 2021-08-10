import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:persian_fonts/persian_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<Login> {
  int phone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "ورود",
          style: PersianFonts.Sahel.copyWith(fontSize: 33),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                  width: 200,
                  height: 150,
                  child: Image.asset('asset/images/logo.png'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'تلفن',
                  hintText: 'لطفا شماره معتبر وارد کنید',
                  labelStyle: PersianFonts.Sahel.copyWith(fontSize: 18),
                  hintStyle: PersianFonts.Sahel,
                ),
                onChanged: (value) => phone = int.parse(value),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  'ورود',
                  style: PersianFonts.Sahel.copyWith(
                      color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
