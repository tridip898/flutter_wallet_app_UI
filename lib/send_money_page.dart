import 'package:flutter/material.dart';

import 'bank_list.dart';
import 'icons/bank_button.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade300,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //app bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back,size: 30,)),
                    Icon(Icons.menu_sharp,size: 30,)
                  ],
                ),
              ),
              //SizedBox(height: 10,),
              
              //text
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  children: [
                    Text("Send ",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                    Text("Money",style: TextStyle(fontSize: 35),),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text("Add your bank account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),

              //container
              Padding(
                padding: const EdgeInsets.all(25),
                child: Container(
                  padding: EdgeInsets.all(20),
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.teal.shade200,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Why to add bank account?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          SizedBox(height: 10,),
                          Text("Without adding your bank \naccount, you will not be \nable to send money",style: TextStyle(fontSize: 15),),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.amberAccent.shade100,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        height: 100,
                        child: Image.asset("lib/icons/model.png"),
                      )
                    ],
                  ),
                ),
              ),
              //card
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  BankButton(iconPath: "lib/icons/hsbc.png",text: "HSBC",),
                  BankButton(iconPath: "lib/icons/citi.png",text: "Citi Bank",),
                  BankButton(iconPath: "lib/icons/standard-chartered.png",text: "Standard",),
                ],
              ),

              SizedBox(height: 30,),
              //bank list
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Select your Bank",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          children: [
                            Column(
                              children: [
                                BankList(bankIcon: "lib/icons/citi.png", bankName: "Citi Bank", cardNum: 73283292836),
                                BankList(bankIcon: "lib/icons/standard-chartered.png", bankName: "Standard Chartered", cardNum: 91527336145),
                                BankList(bankIcon: "lib/icons/hsbc.png", bankName: "HSBC", cardNum: 20547359113),
                              ],
                            ),
                          ]
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
