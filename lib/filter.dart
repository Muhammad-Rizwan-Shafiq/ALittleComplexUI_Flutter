import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  List food =[
    {
      'country':'America',
      'number': '11'
    },
    {
      'country':'Asian',
      'number': '37'
    },
    {
      'country':'Beverage',
      'number': '171'
    },
    {
      'country':'Beverage',
      'number': '171'
    },
    {
      'country':'Beverage',
      'number': '171'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(Icons.close,color: Colors.red,),
          title: Text(
            "Filter",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontFamily: "Montserrat"),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12,left: 15),
              child: Row(
                children: [
                  Text("Offers",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20)),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(" Online payment available",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700)),
                          ),
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                            side: BorderSide(
                              width: 0.2,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(" Online payment available",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700)),
                          ),
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                            side: BorderSide(
                              width: 0.2,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(" Online payment available",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700)),
                          ),
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                            side: BorderSide(
                              width: 0.2,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(" Online payment available",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700)),
                          ),
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                            side: BorderSide(
                              width: 0.2,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            TabBar(
                indicatorColor: Colors.red,
                tabs: [
              Tab(

                child: Text(
                  "Cuisines",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: Colors.red),
                ),
              ),
              Tab(
                child: Text(
                  "Attribute",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: Colors.red),
                ),
              ),
              Tab(
                child: Text(
                  "Price",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: Colors.red),
                ),
              ),

            ]
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  children: [
                    ListView.builder(
                      itemCount: food.length,
                      itemBuilder: (context,index) => ListTile(
                        leading: Text("${food[index]['country']} (${food[index]["number"]})"),
                        trailing: Checkbox(
                          value: false,
                          checkColor: Colors.red,
                        ),
                      ),
                    ),
                    ListView.builder(
                      itemCount: food.length,
                      itemBuilder: (context,index) => ListTile(
                        leading: Text("${food[index]['country']} (${food[index]["number"]})"),
                        trailing: Checkbox(
                          value: false,
                          checkColor: Colors.red,
                        ),
                      ),
                    ),
                    ListView.builder(
                      itemCount: food.length,
                      itemBuilder: (context,index) => ListTile(
                        leading: Text("${food[index]['country']} (${food[index]["number"]})"),
                        trailing: Checkbox(
                          value: false,
                          checkColor: Colors.red,
                        ),
                      ),
                    ),

                  ],

                ),
              ),
            ),

          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            color: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(10),
                ),),
            child: Container(
              height: 50,
              width: 100,
              child: Center(

                child: GestureDetector(
                  onTap: () {},

                  child: Text(
                    "Apply",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
