import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sampleui/sale.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Billed',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Billed'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _scrollController = ScrollController();
  bool loadedData=false;

   List<Sale> saleList = [
    Sale("0", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("1", "2022-08-25", "+91 5678921234", 49186.23, "self","online"),
    Sale("2", "2022-08-25", "+91 5678921234", 49186.23, "self","online"),
    Sale("3", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("4", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("5", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("6", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("7", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("8", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("9", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("10", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("11", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("12", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("13", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("14", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("15", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("16", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("17", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("18", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("19", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("20", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("21", "2022-08-25", "+91 5678921234", 49186.23, "self","online"),
    Sale("22", "2022-08-25", "+91 5678921234", 49186.23, "self","online"),
    Sale("23", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("24", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("25", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("26", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("27", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("28", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("29", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
    Sale("30", "2022-08-25", "+91 5678921234", 49186.23, "self","cash"),
  ];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }



  @override
  initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        if (!loadedData)
      {   Future.delayed(const Duration(milliseconds: 500), () {
            setState(() {
              loadedData = true;
              saleList.add(Sale(
                  "31", "2022-08-25", "+91 5678921234", 49186.23, "self",
                  "cash"));
              saleList.add(Sale(
                  "32", "2022-08-25", "+91 5678921234", 49186.23, "self",
                  "cash"));  saleList.add(Sale(
                  "34", "2022-08-25", "+91 5678921234", 49186.23, "self",
                  "cash"));  saleList.add(Sale(
                  "35", "2022-08-25", "+91 5678921234", 49186.23, "self",
                  "cash"));  saleList.add(Sale(
                  "36", "2022-08-25", "+91 5678921234", 49186.23, "self",
                  "cash"));
            });
          });
      }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(height * 0.15), //
          child: AppBar(
            title: Text(
              widget.title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 26),
            ),
            bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  icon: Icon(Icons.store),
                  text: 'Online Store',
                ),
                Tab(
                  icon: Icon(Icons.file_copy),
                  text: 'Sale',
                ),
                Tab(icon: Icon(Icons.shopping_cart), text: 'Inventory'),
              ],
            ),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
          ),
        ),

        body: SingleChildScrollView(
          controller: _scrollController,
          physics: const ScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[


              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 15.0),
                          hintText: 'Search',
                          hintStyle: const TextStyle(
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              width: 2.0,
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Expanded(child: Icon(Icons.filter_list)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15.0,bottom: 10.0),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          // flex: 5,
                          child: Row(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black12,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 16.0,right: 16.0,top: 8.0,bottom: 8.0),
                                    child: Icon(Icons.account_balance_wallet_sharp,color: Colors.grey,),
                                  )),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 12.0),
                                   child: Column(
                                     mainAxisAlignment: MainAxisAlignment.center ,
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: const [
                                       Text('\u{20B9}'+'25000.00',style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                       Text('Cash'),
                                     ],
                                   ),
                                 ),
                            ],
                          ),
                        ),
                        const VerticalDivider(color: Colors.black45,),
                        Expanded(
                          // flex: 5,
                          child: Row(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black12,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 16.0,right: 16.0,top: 8.0,bottom: 8.0),
                                    child: Icon(Icons.credit_card,color: Colors.grey,),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center ,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('\u{20B9}'+'1,000.00',style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                    Text('Online'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ListView.builder(
                // controller: _scrollController,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                itemCount: saleList.length,
                itemBuilder: (BuildContext context, int index) =>
                    buildSaleCard(context, index)),
              loadedData?Container():const Align(
                alignment: Alignment.bottomCenter,
                child: CircularProgressIndicator(
                ),
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

  buildSaleCard(BuildContext context, int index) {
    final sale = saleList[index];


    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 5.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // if you need this
          side: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
        ),
        child: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      //
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 15,top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Invoice No: '+sale.invoice ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            Text(sale.date,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16) ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                    child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Customer' ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            Text('\u{20B9}${sale.amount}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16) ),
                          ],
                        ),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 12.0,top: 8),
                    // child: Align(
                    //   alignment:Alignment.centerLeft,
                        child: Text(sale.customerNo ,style: TextStyle(fontSize: 16),)
                    // ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 12.0,right: 12.0,top: 8),
                    child: Divider(
                        color: Colors.black12
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Created By: '+sale.createdBy ,style: TextStyle(fontSize: 16),),
                          Text('Payment mode: '+sale.paymentMode,style: TextStyle(fontSize: 16) ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}

  void function() {}
