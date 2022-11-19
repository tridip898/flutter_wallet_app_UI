import 'package:flutter/material.dart';

class BankList extends StatelessWidget {
  final String bankIcon;
  final String bankName;
  final int cardNum;
  const BankList({Key? key, required this.bankIcon, required this.bankName, required this.cardNum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 80,
                child: Image.asset(bankIcon),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(bankName,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text(cardNum.toString(),style: TextStyle(fontSize: 17),),
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)
            ),
              child: Icon(Icons.arrow_forward_ios))
        ],
      ),
    );
  }
}
