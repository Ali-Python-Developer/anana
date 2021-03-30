import 'package:anana/models/Drink.dart';
import 'package:flutter/material.dart';

class DrinkWidget extends StatelessWidget {
  Drink drink;
  DrinkWidget(this.drink);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: drink.bgColor, borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                this.drink.title,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              CircleAvatar(
                backgroundColor: this.drink.iconColor,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Expanded(
            child: Image.asset(
              this.drink.image,
            ),
          ),
        ],
      ),
    );
  }
}
