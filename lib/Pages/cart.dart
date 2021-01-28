import 'package:flutter/material.dart';
import 'package:foodorder/style/theme.dart' as Theme;

class cart extends StatefulWidget {
  @override
  cartState createState() => cartState();
}

class cartState extends State<cart> {
  int checklen = 2;
  final FocusNode promoNode = FocusNode();
  List<String> foodmenu = ["Mixed Grill for One", "Original Halal Snack"];
  List<String> foodrate = ["\$20", "\$12"];
  TextEditingController promoController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.Colors.primecolor1,
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.arrow_back_ios,
                color: Theme.Colors.blackcolor,
                size: 23.0,
              ),
              Text(
                "Item Carts",
                style: TextStyle(
                    color: Theme.Colors.blackcolor,
                    fontSize: 19.0,
                    fontFamily: "ubuntuBold"),
              ),
              Icon(
                Icons.business_center,
                color: Theme.Colors.blackcolor,
                size: 23.0,
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15.0, bottom: 10.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Your Food Cart",
                        style: TextStyle(
                            color: Theme.Colors.blackcolor,
                            fontSize: 20.5,
                            fontFamily: "ubuntuBold"),
                      ),
                    ],
                  )),
              Container(
                  height: checklen == 2
                      ? MediaQuery.of(context).size.height / 3
                      : checklen == 1
                          ? MediaQuery.of(context).size.height / 5
                          : MediaQuery.of(context).size.height / 1.8,
                  child: ListView.builder(
                    itemCount: 2,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                            left: 15.0,
                            right: 15.0,
                            top: index == 0 ? 20.0 : 0.0,
                            bottom: 15.0),
                        padding: EdgeInsets.only(
                            left: 25.0, right: 10.0, top: 10.0, bottom: 10.0),
                        decoration: BoxDecoration(
                          color: Theme.Colors.primecolor,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                        child: Row(
                          children: <Widget>[
                            Image(
                              image: AssetImage(
                                  "assets/New folder/food${index + 1}.webp"),
                              fit: BoxFit.contain,
                              height: 85.0,
                              width: 85.0,
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.7,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin:
                                                  EdgeInsets.only(left: 20.0),
                                              child: Text(
                                                foodmenu[index],
                                                style: TextStyle(
                                                    color:
                                                        Theme.Colors.blackcolor,
                                                    fontFamily: "ubuntu",
                                                    fontSize: 17.0),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 20.0, top: 5.0),
                                              child: Text(
                                                foodrate[index],
                                                style: TextStyle(
                                                    color:
                                                        Theme.Colors.blackcolor,
                                                    fontFamily: "ubuntu",
                                                    fontSize: 17.0),
                                              ),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Icon(
                                              Icons.delete,
                                              size: 25.0,
                                              color: Theme.Colors.blackcolor,
                                            )
                                          ],
                                        )
                                      ],
                                    )),
                                Container(
                                    margin: EdgeInsets.only(top: 10.0),
                                    width:
                                        MediaQuery.of(context).size.width / 1.7,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "—",
                                          style: TextStyle(
                                              color: Theme.Colors.blackcolor,
                                              fontSize: 15.0,
                                              fontFamily: "ubuntuBold"),
                                        ),
                                        Container(
                                          height: 27.0,
                                          width: 60.0,
                                          margin: EdgeInsets.only(
                                              left: 20.0, right: 15.0),
                                          decoration: BoxDecoration(
                                              color: Theme.Colors.secondcolor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0))),
                                          child: Center(
                                            child: Text(
                                              "Add",
                                              style: TextStyle(
                                                  color:
                                                      Theme.Colors.primecolor,
                                                  fontFamily: "ubuntu",
                                                  fontSize: 15.0),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "＋",
                                          style: TextStyle(
                                              color: Theme.Colors.secondcolor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 21.0,
                                              fontFamily: "ubuntuBold"),
                                        )
                                      ],
                                    ))
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  )),
              Container(
                margin: EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                padding: EdgeInsets.only(left: 15.0),
                decoration: BoxDecoration(
                  color: Theme.Colors.primecolor,
                  border: Border.all(
                      color: Theme.Colors.greycolor.withOpacity(0.6)),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                child: new TextField(
                  focusNode: promoNode,
                  controller: promoController,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: "ubuntu",
                      color: Theme.Colors.grey),
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.local_offer,
                      color: Theme.Colors.orangecolor,
                      size: 20.0,
                    ),
                    hintText: "Add your promo code",
                    hintStyle: TextStyle(
                        fontFamily: "ubuntu",
                        color: Theme.Colors.greycolor.withOpacity(0.6),
                        fontSize: 17.0),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                      left: 15.0, bottom: 15.0, right: 15.0, top: 15.0),
                  padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                  decoration: BoxDecoration(
                    color: Theme.Colors.primecolor,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                            margin: EdgeInsets.only(
                                top: 5.0, bottom: 10.0, right: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  index == 2 ? "Total" : foodmenu[index],
                                  style: TextStyle(
                                      color: Theme.Colors.blackcolor,
                                      fontFamily:
                                          index == 2 ? "ubuntuBold" : "ubuntu",
                                      fontSize: 18.0),
                                ),
                                Text(
                                  index == 2 ? "\$22" : foodrate[index],
                                  style: TextStyle(
                                      color: Theme.Colors.blackcolor,
                                      fontFamily: "ubuntu",
                                      fontSize: 18.0),
                                ),
                              ],
                            ));
                      })),

              Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 5.0, bottom: 10.0),
                child: Row(children: <Widget>[ Text("Payment Method",  style: TextStyle(
                    color: Theme.Colors.blackcolor,
                    fontSize: 20.5,
                    fontFamily: "ubuntuBold"),),
                ],)
              ),
              
              Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20.0),
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 25.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Theme.Colors.primecolor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.credit_card, color: Colors.blue),
                    Container(
                      margin: EdgeInsets.only(left: 15.0),
                      child: Text("Credit/Debit Card", style: TextStyle(
                        color: Theme.Colors.blackcolor, fontFamily: "ubuntu", fontSize: 17.0
                      ),),
                    )
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20.0),
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 25.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Theme.Colors.primecolor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.monetization_on, color: Colors.green),
                    Container(
                      margin: EdgeInsets.only(left: 15.0),
                      child: Text("Net Banking", style: TextStyle(
                          color: Theme.Colors.blackcolor, fontFamily: "ubuntu", fontSize: 17.0
                      ),),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
