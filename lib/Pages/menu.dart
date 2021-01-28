import 'package:flutter/material.dart';
import 'package:foodorder/Pages/detailedView.dart';
import 'package:foodorder/Pages/menulist.dart';
import 'package:foodorder/style/theme.dart' as Theme;

class menu extends StatefulWidget {
  @override
  menuState createState() => menuState();
}

class menuState extends State<menu> {
  final FocusNode searchNode = FocusNode();
  TextEditingController searchController = new TextEditingController();
  List<String> foodmenu = [
    "Skewers",
    "HSP",
    "Kebabs",
    "Main",
    "Biryani",
    "Sides",
    "Desserts"
  ];
  List<String> foodrate = ["20", "12", "10", "17", "12", "3.50", "5"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.Colors.primecolor1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "What would you like to eat?",
              style: TextStyle(
                  color: Theme.Colors.blackcolor,
                  fontFamily: "ubuntu",
                  fontSize: 17.0),
            ),
            Icon(
              Icons.notifications_none,
              color: Theme.Colors.blackcolor,
              size: 25.0,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Theme.Colors.primecolor1,
              child: Container(
                margin: EdgeInsets.only(bottom: 10.0, left: 15.0, right: 15.0),
                decoration: BoxDecoration(
                  color: Theme.Colors.primecolor1,
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
                child: new TextField(
                  focusNode: searchNode,
                  controller: searchController,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: "ubuntu",
                      color: Theme.Colors.grey),
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Theme.Colors.secondcolor,
                      size: 20.0,
                    ),
                    suffixIcon: Icon(
                      Icons.clear_all,
                      color: Theme.Colors.secondcolor,
                      size: 20.0,
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(
                        fontFamily: "ubuntu",
                        color: Theme.Colors.greycolor,
                        fontSize: 15.0),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(gradient: Theme.Colors.pinkGradient),
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              height: 90.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodmenu.length,
                itemBuilder: (context, index) {
                  return InkWell(child:Container(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                left: 10.0, right: 10.0, bottom: 5.0),
                            height: 45.0,
                            width: 45.0,
                            color: Theme.Colors.primecolor,
                            child: Image(
                              image: AssetImage(
                                  "assets/New folder/food${index + 1}.webp"),
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            foodmenu[index],
                            style: TextStyle(
                                color: Theme.Colors.blackcolor,
                                fontSize: 14.0,
                                fontFamily: "ubuntu"),
                          )
                        ],
                      )),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => menulist(titlename: foodmenu[index],
                              imagePath: "assets/New folder/food${index + 1}.webp")));
                    },
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Popular Foods",
                    style: TextStyle(
                        color: Theme.Colors.greycolor,
                        fontFamily: "ubuntu",
                        fontSize: 20.0),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: "ubuntu",
                        fontSize: 20.0),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodmenu.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Theme.Colors.primecolor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                left: 10.0,
                                right: 10.0,
                                bottom: 12.0,
                                top: 5.0),
                            width: 160.0,
                            child: Image(
                              image: AssetImage(
                                  "assets/New folder/food${index + 1}.webp"),
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10.0, left: 10.0),
                            width: 160.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  foodmenu[index],
                                  style: TextStyle(
                                      color: Theme.Colors.grey,
                                      fontSize: 16.0,
                                      fontFamily: "ubuntu"),
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Theme.Colors.secondcolor,
                                  size: 15.0,
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 170.0,
                            margin: EdgeInsets.only(left: 10.0),
                            padding: EdgeInsets.only(right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                          color: Theme.Colors.grey,
                                          fontSize: 13.0,
                                          fontFamily: "ubuntu"),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Theme.Colors.secondcolor,
                                      size: 15.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Theme.Colors.secondcolor,
                                      size: 15.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Theme.Colors.secondcolor,
                                      size: 15.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Theme.Colors.secondcolor,
                                      size: 15.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Theme.Colors.grey,
                                      size: 15.0,
                                    )
                                  ],
                                ),
                                Text(
                                  "\$${foodrate[index]}",
                                  style: TextStyle(
                                      color: Theme.Colors.grey,
                                      fontSize: 15.0,
                                      fontFamily: "ubuntu"),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                    onTap: (){
                    String currentFoodImg = "food${index + 1}";
                    String foodname = foodmenu[index];
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => detailedView(imagePath:currentFoodImg,
                              foodName:foodname)));
                    },
                  );
                },
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    left: 15.0, top: 20.0, bottom: 15.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Best Foods",
                        style: TextStyle(
                            color: Theme.Colors.greycolor,
                            fontFamily: "ubuntu",
                            fontSize: 20.0),
                      ),
                    ])),

            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                    top: 10.0, right: 20.0, left: 20.0, bottom: 5.0),
                child: Image(
                  image: AssetImage("assets/New folder/food5wide.webp"),
                  fit: BoxFit.contain,
                  height: 100.0,
                )),

            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                    top: 10.0, right: 20.0, left: 20.0, bottom: 5.0),
                child: Image(
                  image: AssetImage("assets/New folder/food3wide.webp"),
                  fit: BoxFit.contain,
                  height: 100.0,
                )),
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                    top: 10.0, right: 20.0, left: 20.0, bottom: 5.0),
                child: Image(
                  image: AssetImage("assets/New folder/food4wide.webp"),
                  fit: BoxFit.contain,
                  height: 100.0,
                )),
          ],
        ),
      ),
    );
  }
}
