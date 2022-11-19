import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconPath;
  final String title;
  final String subTitle;
  const MyListTile({Key? key, required this.iconPath, required this.title, required this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                height: 80,
                child: Image.asset(iconPath),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                  SizedBox(height: 8,),
                  Text(subTitle,style: TextStyle(fontSize: 18,),)
                ],
              ),
            ],
          ),
          Container(
              padding: EdgeInsets.all(5),
              decoration : BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Icon(Icons.arrow_forward_ios))
        ],
      ),
    );
  }
}
