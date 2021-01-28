import 'package:flutter/material.dart';
import 'package:foodorder/style/theme.dart' as Theme;

class menulist extends StatefulWidget {
  final String titlename;
  final String imagePath;
  const menulist({Key key, this.titlename, this.imagePath}) : super(key: key);

  @override
  menulistState createState() => menulistState();
}

class menulistState extends State<menulist> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
                widget.titlename,
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
            child: Column(children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                  top: 10.0, right: 20.0, left: 20.0, bottom: 5.0),
              child: Image(
                image: AssetImage(widget.imagePath),
                fit: BoxFit.contain,
              )),
          Container(
              margin: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20.0, bottom: 10.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Menu",
                    style: TextStyle(
                        color: Theme.Colors.blackcolor,
                        fontSize: 20.0,
                        fontFamily: "ubuntuBold"),
                  ),
                ],
              )),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Container(
                      margin: EdgeInsets.only(
                          left: 15.0,
                          right: 15.0,
                          bottom: 15.0,
                          top: index == 0 ? 10.0 : 0.0),
                      padding: EdgeInsets.only(bottom: 10.0, top: 10.0),
                      decoration: BoxDecoration(
                        color: Theme.Colors.primecolor,
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                left: 10.0, right: 20.0, bottom: 5.0),
                            height: 70.0,
                            width: 70.0,
                            color: Theme.Colors.primecolor,
                            child: Image(
                              image: AssetImage(widget.imagePath),
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width / 1.7,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "${widget.titlename} ${index + 1}",
                                        style: TextStyle(
                                            color: Theme.Colors.blackcolor,
                                            fontSize: 18.0,
                                            fontFamily: "ubuntuBold"),
                                      ),
                                      Container(
                                        child: Text(
                                          "\$20",
                                          style: TextStyle(
                                              color: Theme.Colors.blackcolor,
                                              fontSize: 17.0,
                                              fontFamily: "ubuntu"),
                                        ),
                                        margin: EdgeInsets.only(top: 10.0),
                                      )
                                    ],
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                          gradient: Theme.Colors.boxGradient,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 2.0,
                                            ),
                                          ],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0))),
                                      height: 30.0,
                                      width: 100.0,
                                      child: Center(
                                        child: Text(
                                          "Add to cart",
                                          style: TextStyle(
                                              color: Theme.Colors.primecolor,
                                              fontFamily: "ubuntu",
                                              fontSize: 15.0),
                                        ),
                                      ))
                                ],
                              ))
                        ],
                      )),
                  onTap: () {},
                );
              },
            ),
          )
        ])));
  }
}
