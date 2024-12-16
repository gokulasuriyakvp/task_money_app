import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_money_page/drawer.dart';

class MoneyScreen extends StatefulWidget {
  const MoneyScreen({super.key});

  @override
  State<MoneyScreen> createState() => _MoneyScreenState();
}

class _MoneyScreenState extends State<MoneyScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      appBar: AppBar(
        toolbarHeight: 70,
        title: Row(
          children: [
            Text(
              'CAFS',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'MONEY',
              style: TextStyle(color: Colors.deepOrange),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: SizedBox(
                height: 40,
                child: TextFormField(
                  controller: _searchController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black), // Border color when focused
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Text('CAFS Money >',
                            style: TextStyle(color: Colors.deepOrange)),
                        Text('Mutual Funds >',
                            style: TextStyle(color: Colors.deepOrange)),
                        Text('Search',
                            style: TextStyle(color: Colors.deepOrange)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Search mutual Funds',
                          style: TextStyle(fontSize: 25),
                        ),
                        //SizedBox(width: 130),
                        Icon(Icons.filter_list),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Sort by',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 5),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Text('Scheme Name'),
                                Icon(Icons.keyboard_arrow_up_outlined, size: 20),
                              ],
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Text('Category'),
                                Icon(Icons.keyboard_arrow_up_outlined, size: 20),
                              ],
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Text('Min.Investment'),
                                Icon(Icons.keyboard_arrow_up_outlined, size: 20),
                              ],
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Text('Returns'),
                                Icon(Icons.keyboard_arrow_up_outlined, size: 20),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Search mutual funds among 1000+ open-ended mutual funds. Choose a suitable investment by filtering your preferred AMC, category, returns, minimum investment, risk appetite, and fund rating. Before searching for a mutual fund make sure you have chosen your investment goal, risk level, investment amount, and expected returns.',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 500,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context,index) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            height: 200,
                            width: 450,
                            color: CupertinoColors.systemGrey5,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Container(
                                          height: 150,
                                          width: 100,
                                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/aditya.png'))),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10,top: 150,bottom: 10,right: 20),
                                          child: Container(
                                            height: 20,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color:Colors.grey,borderRadius: BorderRadius.circular(8)
                                            ),
                                            child: Row(
                                              children: [
                                                Icon(Icons.star,color: Colors.white,size: 15,),
                                                Text('N.A',style: TextStyle(color: Colors.white,fontSize: 14),),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      children: [
                                        Text('Aditya Birla Sun Life Psu Equity Fund',style: TextStyle(fontWeight: FontWeight.bold),),
                                        SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius: BorderRadius.circular(20)),
                                              child: Text('Equity Scheme'),
                                            ),
                                            SizedBox(width: 40),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius: BorderRadius.circular(20)),
                                              child: Text('Sectoral/Thematic'),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('1% on or before 30D, Nil after 30D'),
                                            Text('Exit Load',style: TextStyle(color: Colors.grey),),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('\u{20B9}${500}'),
                                                Text('Min.Lumpsum',style: TextStyle(color: Colors.grey.shade700)),
                                              ],
                                            ),
                                            SizedBox(width: 80),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('\u{20B9}${100}'),
                                                Text('Min.SIP',style: TextStyle(color: Colors.grey.shade700)),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('46.014',style: TextStyle(color: Colors.green)),
                                                Text('CAGR returns',style: TextStyle(color: Colors.grey.shade700)),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 40,),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Very High Risk',style: TextStyle(color: Colors.red),),
                                                  Text('Risk',style: TextStyle(color: Colors.grey.shade700)),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}