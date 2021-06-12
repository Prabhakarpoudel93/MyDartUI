import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        //title: Text("My Bank"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.notification_add_outlined),
          )
        ],
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 450,
            width: MediaQuery.of(context).size.width,
            color: Color(0xff2f26db),
          ),
          Positioned(
              top: 110,
              left: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Balance",
                    style: TextStyle(fontSize: 22, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "\$547000.00",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 180,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffc4f1ff),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.ac_unit,
                                size: 50,
                              ),
                              Text(
                                "\$5,000",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "Expense",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 180,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffffe7d8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.money_outlined,
                                size: 50,
                              ),
                              Text(
                                "\$15,000",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "Spend to Goals",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )),
          Positioned(
            top: 400,
            child: Container(
              
              width: MediaQuery.of(context).size.width,
              height: 450,
              color: Colors.white,
              /*decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),*/
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  ListTile(
                    title: Text("Transactions",
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 26,
                            fontWeight: FontWeight.w500)),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(color: Colors.blue),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        primary: Color(0xffeff1fe),
                      ),
                    ),
                  ),
                  Container(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Icon(Icons.car_rental,size: 40,color: Colors.white,),
                        backgroundColor: Colors.green,
                      ),
                      title: Text(
                        "Car Purchases",
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text("Auto Loan"),
                      trailing: Text(
                        "-\$250",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
                  ),
            
                  Container(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Icon(Icons.house,size: 40,color: Colors.white,),
                        backgroundColor: Colors.blue[900],
                      ),
                      title: Text(
                        "House Purchase",
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text("Airbnb"),
                      trailing: Text(
                        "\$2250",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
                  ),
            
                  Container(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Icon(Icons.card_giftcard,size: 40,color: Colors.white,),
                        backgroundColor: Colors.deepOrange,
                      ),
                      title: Text(
                        "Transport",
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text("Uber, pathao"),
                      trailing: Text(
                        "\$250",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
                  ),
            
                  Container(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Icon(Icons.shopping_cart,size: 40,color: Colors.white,),
                        backgroundColor: Colors.blue,
                      ),
                      title: Text(
                        "Shopping",
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text("Wish, Apple"),
                      trailing: Text(
                        "\$350",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
                  ),
            
                  Container(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Icon(Icons.car_rental,size: 40,color: Colors.white,),
                        backgroundColor: Colors.green,
                      ),
                      title: Text(
                        "Car Purchases",
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text("Auto Loan"),
                      trailing: Text(
                        "-\$250",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
