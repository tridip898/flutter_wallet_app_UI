import 'package:flutter/material.dart';

class Cards extends StatelessWidget {

  final double balance;
  final int cardNum;
  final int expMonth;
  final int expyear;
  final color;

  const Cards(
      {Key? key,
      required this.balance,
      required this.cardNum,
      required this.expMonth,
      required this.expyear,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 345,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Balance",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Container(
                    height: 50,
                    child: Image.asset("lib/icons/visa.png"))
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text('\$'+ balance.toString() , style: TextStyle(color: Colors.white, fontSize: 35),),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNum.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  expMonth.toString() +'/'+ expyear.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
