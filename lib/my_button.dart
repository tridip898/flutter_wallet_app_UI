import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String icon;
  final String text;
  const MyButton({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: 90,
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 10,
                    spreadRadius: 3
                )
              ]
          ),
          child: Center(
            child: Image.asset(icon),
          ),
        ),
        SizedBox(height: 10,),
        Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
      ],
    );
  }
}
