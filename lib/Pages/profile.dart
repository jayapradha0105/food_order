import 'package:flutter/material.dart';
import 'package:foodorder/style/theme.dart' as Theme;

class profile extends StatefulWidget {
  @override
  profileState createState() => profileState();
}

class profileState extends State<profile> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 100.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("NAME", style: TextStyle(fontSize: 22.0, fontFamily: "ubuntuBold",
                      color: Theme.Colors.blackcolor),),

                      Text("+91 8938399284", style: TextStyle(color: Theme.Colors.greycolor,
                      fontFamily: "ubuntu", fontSize: 15.0, height: 1.5),),

                      Text("name@gmail.com", style: TextStyle(color: Theme.Colors.greycolor,
                          fontFamily: "ubuntu", fontSize: 15.0),)
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: Theme.Colors.boxGradient,
                      borderRadius: BorderRadius.all(Radius.circular(7.0))
                    ),
                    width: 75.0,
                      height: 30.0,
                    child: Center(child:Text("EDIT", style: TextStyle(fontSize: 16.0, fontFamily: "ubuntu",
                    color: Theme.Colors.primecolor),)),
                  )
                ],
              ),

              Container(
                height: 1.5,
                  color: Theme.Colors.grey,
                margin: EdgeInsets.only(top: 15.0, bottom: 25.0),
              ),

              Row(
                children: <Widget>[
                  Text("My Account", style: TextStyle(color: Theme.Colors.blackcolor, fontFamily: "ubuntuBold",
              fontSize: 20.0),)  ],
              ),

              Row(
                children: <Widget>[
                  Text("Addresses, Payment, Favourites, Offers", style: TextStyle(color: Theme.Colors.greycolor,
                      fontFamily: "ubuntu", fontSize: 15.0, height: 1.5),)  ],
              ),

              Container(
                margin: EdgeInsets.only(top: 30.0, bottom: 25.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.home, color: Theme.Colors.blackcolor, size: 20.0,),
                        Text("   Manage Addresses", style: TextStyle(color: Theme.Colors.blackcolor, fontSize: 17.0,
                        fontFamily: "ubuntuBold"),)
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios, color: Theme.Colors.greycolor, size: 18.0,)
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 25.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.payment, color: Theme.Colors.blackcolor, size: 20.0,),
                        Text("   Payments", style: TextStyle(color: Theme.Colors.blackcolor, fontSize: 17.0,
                            fontFamily: "ubuntuBold"),)
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios, color: Theme.Colors.greycolor, size: 18.0,)
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 25.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.favorite_border, color: Theme.Colors.blackcolor, size: 20.0,),
                        Text("   Favourites", style: TextStyle(color: Theme.Colors.blackcolor, fontSize: 17.0,
                            fontFamily: "ubuntuBold"),)
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios, color: Theme.Colors.greycolor, size: 18.0,)
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 25.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.share, color: Theme.Colors.blackcolor, size: 20.0,),
                        Text("   Refer and Earn", style: TextStyle(color: Theme.Colors.blackcolor, fontSize: 17.0,
                            fontFamily: "ubuntuBold"),)
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios, color: Theme.Colors.greycolor, size: 18.0,)
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 30.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.local_offer, color: Theme.Colors.blackcolor, size: 20.0,),
                        Text("   Offers", style: TextStyle(color: Theme.Colors.blackcolor, fontSize: 17.0,
                            fontFamily: "ubuntuBold"),)
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios, color: Theme.Colors.greycolor, size: 18.0,)
                  ],
                ),
              ),

              Container(
                height: 1.5,
                color: Theme.Colors.grey,
                margin: EdgeInsets.only(bottom: 15.0),
              ),

              Row(
                children: <Widget>[
                  Text("Help", style: TextStyle(color: Theme.Colors.blackcolor, fontFamily: "ubuntuBold",
                      fontSize: 19.0),)  ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("FAQs and Links", style: TextStyle(color: Theme.Colors.greycolor,
                      fontFamily: "ubuntu", fontSize: 15.0, height: 1.5),),
                  Container(
                      margin: EdgeInsets.only(right: 15.0),
                      child:Icon(Icons.arrow_forward_ios, color: Theme.Colors.greycolor, size: 18.0,)
                  )
                ],
              ),

              Container(
                height: 45.0,
                  width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: Theme.Colors.boxGradient
                ),
                margin: EdgeInsets.only(top: 25.0),
                child: Center(
                  child: Text("LOGOUT", style: TextStyle(color: Theme.Colors.primecolor,
                  fontFamily: "ubuntu", fontSize: 20.0),),
                ),
              )
            ],
          )
        )
      )
    );
  }
}