import 'package:anana/data/dummy_data.dart';
import 'package:anana/ui/home/widgets/drink_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(
                    width: 100,
                  ),
                  Image.asset('assets/logo8.jpeg',
                      height: size.height / 10, width: size.width / 4),
                ],
              ),
              Text(
                'anana',
                style: GoogleFonts.pacifico(
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
                textAlign: TextAlign.center,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, size: 30),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.0),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                    padding: EdgeInsets.all(15),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15,
                        ),
                        itemCount: DummyData.drinks.length,
                        itemBuilder: (context, index) {
                          return DrinkWidget(DummyData.drinks[index]);
                        })),
              )
            ],
          ),
        ),
      ),
    );
  }
}
