
import 'package:flutter/material.dart';
import 'package:linnBooks_app_ui/horizontal_bar.dart';
import 'package:linnBooks_app_ui/tab_bar_part.dart';
import 'package:linnBooks_app_ui/widgets/transaction_item.dart';

import '../models/transaction.dart';
import '../widgets/menu_box.dart';
import '../widgets/transaction_detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
        final chartData = [
          Data(text: '+\$100',units: 25, color: Color.fromARGB(255, 6, 156, 96)),
          Data(units: 25, color: Color.fromARGB(255, 241, 80, 58), text: '+\$100'),
          Data(text: '+\$100',units: 25, color: Color.fromARGB(255, 209, 153, 12)),
          Data(text: '+\$100',units: 25, color: Color.fromARGB(255, 236, 232, 226)),
    ];

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade800,
              Colors.white60,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      Icons.format_align_left,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
      
                        Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: 'Linn',                          style: TextStyle(
                            
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 23,
                          ),),
                                TextSpan(text: 'Books', 
                               style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 223, 85, 85),
                            fontSize: 18,
                          ),),
                              ],
                            ),
                          ),
                        SizedBox(
                          height: 20,
                        ),
                        
                        Text(
                          "ABC Company",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                      SizedBox(
                          height: 5,
                        ),
                        Text(
                          "23-Sep 18:22 AM",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.blueGrey,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                NetworkImage('https://i.pravatar.cc/150?img=2'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0,top: 5.0),
                        child: Text(
                          "Balance",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Text(
                          "\$1000.0",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: Column(
                children:  [
                  Padding(
        padding: const EdgeInsets.all(4.0),
        child: Center(
          child: SizedBox(
            height: 20,
            child: HorizontalBarChart(
              data: chartData, 
            ),
          ),
        ),)
                ],
              ),
            ),
            SingleChildScrollView(
            //  margin: const EdgeInsets.only(top: 30),
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 0.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: const [
                  MenuWidget(
                    icon: Icons.send_rounded,
                    text: "Income",
                  ),
                  MenuWidget(
                    icon: Icons.account_balance_wallet,
                    text: "Expence",
                  ),
                  MenuWidget(
                    icon: Icons.payment,
                    text: "Loan",
                  ),
                  MenuWidget(
                    icon: Icons.more_horiz,
                    text: "Sync",
                  ),
                  MenuWidget(
                    icon: Icons.account_balance_wallet,
                    text: "Text",
                  ),
                  MenuWidget(
                    icon: Icons.payment,
                    text: "Loan",
                  ),
                  MenuWidget(
                    icon: Icons.more_horiz,
                    text: "List",
                  ),
                ],
              ),
            ),
            
            Expanded(
              
              child: Container(
                margin: const EdgeInsets.only(top: 30),
            
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                child: const TabBarPart(),
               //child: Text('data'),
              ),
            ),
          ],
        ),
      ),
      
      
    );
  }
}
 