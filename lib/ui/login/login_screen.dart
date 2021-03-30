import 'dart:ui';
import 'package:anana/ui/home/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.darken),
              image: AssetImage('assets/login.jpeg'),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'anana',
              style: GoogleFonts.pacifico(
                  letterSpacing: 1,
                  color: Colors.white54,
                  fontSize: 40,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 150,
              padding: EdgeInsets.only(top: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xffDB94E),
              ),
              child: Center(
                child: TextButton(
                  child: Text(
                    'Menu',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w900),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (x) {
                      return HomePage();
                    }));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
