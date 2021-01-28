import 'package:flutter/material.dart';
import 'package:foodorder/style/theme.dart' as Theme;

class login extends StatefulWidget {
  @override
  loginState createState() => loginState();
}

class loginState extends State<login> {
  final FocusNode mobileLogin = FocusNode();
  TextEditingController mobileController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomSheet: Container(
        margin: EdgeInsets.only(bottom: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Don't have an account? ", style: TextStyle(
              color: Theme.Colors.grey, fontSize: 15.0, fontFamily: "ubuntu"
            ),),
            Text(
              "Sign Up", style: TextStyle(
              color: Theme.Colors.pinkcolor, fontFamily: "ubuntu", fontSize: 15.0
            ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage("assets/New folder/foodorderlogo.webp"),
                      fit: BoxFit.contain,
                      height: 100.0,
                      width: 100.0,
                    ),
                    Text(
                      " food",
                      style: TextStyle(
                        fontFamily: "ubuntuBold",
                          fontSize: 28.0, color: Colors.black),
                    ),
                    Text(
                      "order",
                      style: TextStyle(
                          fontFamily: "ubuntuItalic",
                          fontSize: 28.0, color: Colors.deepOrangeAccent),
                    )
                  ],
                ),

              Container(
                margin: EdgeInsets.only(top: 40.0, left: 15.0, right: 15.0),
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Theme.Colors.primecolor1,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child:  new TextField(
                  focusNode: mobileLogin,
                  controller: mobileController,
                  keyboardType:
                  TextInputType.number,
                  style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: "ubuntu",
                      color: Theme.Colors.grey),
                  decoration:
                  new InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.phone, color: Theme.Colors.grey, size: 20.0,),
                    hintText: "Phone Number",
                    hintStyle: TextStyle(
                        fontFamily: "ubuntu",
                        color: Theme.Colors.grey,
                        fontSize: 15.0),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Theme.Colors.primecolor1,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child:  new TextField(
                  focusNode: mobileLogin,
                  controller: mobileController,
                  keyboardType:
                  TextInputType.number,
                  style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: "ubuntu",
                      color: Theme.Colors.grey),
                  decoration:
                  new InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock_outline, color: Theme.Colors.grey, size: 20.0,),
                    suffixIcon: Icon(Icons.remove_red_eye, color: Theme.Colors.grey, size: 20.0,),
                    hintText: "Password",
                    hintStyle: TextStyle(
                        fontFamily: "ubuntu",
                        color: Theme.Colors.grey,
                        fontSize: 15.0),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(right: 15.0, top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("Forgot your password ?", style: TextStyle(
                      color: Theme.Colors.grey,
                      fontSize: 15.0,
                      fontFamily: "ubuntu"
                    ),)
                  ],
                ),
              ),

             InkWell(child: Container(
                margin: EdgeInsets.only(right: 15.0, left: 15.0, top: 20.0),
                decoration: BoxDecoration(
                  gradient: Theme.Colors.boxGradient,
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                height: 57.0,
                child: Center(
                  child: Text("SIGN IN", style: TextStyle(
                    color: Theme.Colors.primecolor,
                    fontFamily: "ubuntuBold",
                    fontSize: 27.0
                  ),),
                ),
             ),
               onTap: (){
                 Navigator.pushReplacementNamed(context, '/homepage');
               },
              ),


              Container(
                margin: EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 15.0),
                      height: 1.0,
                      width: 100.0,
                      color: Theme.Colors.grey,
                    ),
                    Container(
                      child: Text("Or", style: TextStyle(color: Theme.Colors.grey, fontSize: 15.0,
                      fontFamily: "ubuntu"),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15.0),
                      height: 1.0,
                      width: 100.0,
                      color: Theme.Colors.grey,
                    )
                  ],
                ),
              ),


              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 25.0,
                      backgroundColor: Theme.Colors.pinkcolor,
                      child: Text("f", style: TextStyle(fontFamily: "francois",
                      fontSize: 25.0, color: Theme.Colors.primecolor),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40.0),
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Theme.Colors.pinkcolor,
                        child: Text("G", style: TextStyle(fontFamily: "ubuntu", fontWeight: FontWeight.bold,
                            fontSize: 25.0, color: Theme.Colors.primecolor),),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
