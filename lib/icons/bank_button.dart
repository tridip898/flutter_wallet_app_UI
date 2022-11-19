import 'package:flutter/material.dart';

class BankButton extends StatelessWidget {
  final String iconPath;
  final String text;
  const BankButton({Key? key, required this.iconPath, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          height: 90,
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 10,
                    spreadRadius: 5
                ),
              ]
          ),
          child: Center(
            child: Image.asset(iconPath),
          ),
        ),
        SizedBox(height: 20,),
        Container(child: Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))
      ],
    );
  }
}
