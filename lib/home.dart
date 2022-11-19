import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/send_money_page.dart';

import 'cards.dart';
import 'my_button.dart';
import 'my_listTile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List cardData = [
    [6580.30, 7862926189, 5, 22, Colors.pink.shade300],
    [6580.30, 7862926189, 5, 22, Colors.tealAccent.shade400],
    [6580.30, 7862926189, 5, 22, Colors.green.shade300],
  ];
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.pink.shade400,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey.shade100,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home,
                      size: 40,
                      color: Colors.pink.shade100,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings,
                      size: 40,
                      color: Colors.grey.shade500,
                    )),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.grey.shade200,
        body: Column(
          children: [
            //app bar
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(
                          text: "My",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                          children: [
                        TextSpan(
                            text: " Cards",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold))
                      ])),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Icon(Icons.add),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20)),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            //cards
            Container(
              height: 190,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  itemCount: cardData.length,
                  itemBuilder: (context, index) {
                    return Cards(
                      balance: cardData[index][0],
                      cardNum: cardData[index][1],
                      expMonth: cardData[index][2],
                      expyear: cardData[index][3],
                      color: cardData[index][4],
                    );
                  }),
            ),
            SizedBox(
              height: 15,
            ),

            SmoothPageIndicator(
              controller: _pageController,
              count: cardData.length,
              effect: ExpandingDotsEffect(activeDotColor: Colors.redAccent),
            ),

            SizedBox(
              height: 30,
            ),

            //3 buttons -> pay + send + bill
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    child: MyButton(
                        icon: "lib/icons/send-money.png", text: "Send"),
                  onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SendMoney()));
                  },
                ),
                MyButton(icon: "lib/icons/credit-card.png", text: "Pay"),
                MyButton(icon: "lib/icons/bill.png", text: "Bill"),
              ],
            ),

            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          MyListTile(
                              iconPath: "lib/icons/analysis.png",
                              title: "Statistics",
                              subTitle: "Payment and Income"),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          MyListTile(
                              iconPath: "lib/icons/money-transfer.png",
                              title: "Transaction",
                              subTitle: "Transaction History"),
                        ],
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
