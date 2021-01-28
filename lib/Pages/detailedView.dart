import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodorder/style/theme.dart' as Theme;

class detailedView extends StatefulWidget {
  final String imagePath;
  final String foodName;
  const detailedView({Key key, this.imagePath, this.foodName}): super(key: key);
  @override
  detailedViewState createState() => detailedViewState();
}

class detailedViewState extends State<detailedView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

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
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(
                      top: 10.0, right: 20.0, left: 20.0, bottom: 5.0),
                  child: Image(
                    image: AssetImage("assets/New folder/${widget.imagePath}.webp"),
                    fit: BoxFit.contain,
                  )),
              Container(
                  margin: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        widget.foodName,
                        style: TextStyle(
                            color: Theme.Colors.blackcolor,
                            fontSize: 22.0,
                            fontFamily: "ubuntu"),
                      ),
                      Text(
                        "\$20",
                        style: TextStyle(
                            color: Theme.Colors.blackcolor,
                            fontSize: 22.0,
                            fontFamily: "ubuntu"),
                      )
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "by",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                            fontFamily: "ubuntu"),
                      ),
                      Text(
                        " taasty kebabs",
                        style: TextStyle(
                            color: Theme.Colors.blackcolor,
                            fontSize: 15.0,
                            fontFamily: "ubuntu"),
                      )
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "—",
                        style: TextStyle(
                            color: Theme.Colors.blackcolor,
                            fontSize: 20.0,
                            fontFamily: "ubuntuBold"),
                      ),
                      Container(
                        height: 45.0,
                        width: 170.0,
                        margin: EdgeInsets.only(left: 20.0, right: 15.0),
                        decoration: BoxDecoration(
                            color: Theme.Colors.secondcolor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: Center(
                          child: Text(
                            "Add To Bag",
                            style: TextStyle(
                                color: Theme.Colors.primecolor,
                                fontFamily: "ubuntu",
                                fontSize: 20.0),
                          ),
                        ),
                      ),
                      Text(
                        "＋",
                        style: TextStyle(
                            color: Theme.Colors.secondcolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            fontFamily: "ubuntuBold"),
                      )
                    ],
                  )),
              Container(
                  height: MediaQuery.of(context).size.height / 3,
                  margin: EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
                  child: Scaffold(
                      appBar: AppBar(
                        elevation: 0.0,
                        backgroundColor: Theme.Colors.primecolor,
                        title: TabBar(
                          unselectedLabelColor: Colors.grey,
                          labelColor: Theme.Colors.secondcolor,
                          indicatorColor: Theme.Colors.secondcolor,
                          controller: _tabController,
                          tabs: [
                            new Tab(
                              child: Text(
                                "Food Details",
                                style: TextStyle(
                                    fontSize: 18.0, fontFamily: "ubuntu"),
                              ),
                            ),
                            new Tab(
                              child: Text(
                                "Food Reviews",
                                style: TextStyle(
                                    fontSize: 18.0, fontFamily: "ubuntu"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      body: Container(
                          child: TabBarView(
                        children: [
                          Column(
                            children: <Widget>[
                              Container(
                                  margin:
                                      EdgeInsets.only(top: 10.0, bottom: 15.0),
                                  child: Row(
                                    children: <Widget>[
                                      new Text(
                                        "Add-ons",
                                        style: TextStyle(
                                            fontFamily: "ubuntu",
                                            fontSize: 17.0,
                                            color: Theme.Colors.secondcolor),
                                      ),
                                    ],
                                  )),
                              new Text(
                                "1 Lamb Skewer, 1 Chicken Skewer, 1 Cutlet, 1 Adana, "
                                "Salad with Rice & Choice of 2 Dips.",
                                style: TextStyle(
                                    fontFamily: "ubuntu",
                                    height: 1.5,
                                    fontSize: 15.0,
                                    color: Theme.Colors.blackcolor),
                              ),
                            ],
                          ),
                          ListView.builder(
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(
                                    bottom: 10.0,
                                    left: 5.0,
                                    right: 5.0,
                                    top: index == 0 ? 10.0 : 0.0),
                                padding: EdgeInsets.only(
                                    top: 10.0,
                                    left: 10.0,
                                    right: 10.0,
                                    bottom: 10.0),
                                decoration: BoxDecoration(
                                  color: Theme.Colors.primecolor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5.0,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(bottom: 12.0),
                                          child:
                                         Text(
                                            "Name",
                                            style: TextStyle(
                                                color: Theme.Colors.secondcolor,
                                                fontSize: 16.0,
                                                fontFamily: "ubuntu"),
                                         )
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 12.0),
                                          child:
                                        Row(
                                          children: <Widget>[
                                            Icon(Icons.star_border,
                                                color: Theme.Colors.secondcolor,
                                                size: 17.0),
                                            Icon(Icons.star_border,
                                                color: Theme.Colors.secondcolor,
                                                size: 17.0),
                                            Icon(Icons.star_border,
                                                color: Theme.Colors.secondcolor,
                                                size: 17.0),
                                            Icon(Icons.star_border,
                                                color: Theme.Colors.secondcolor,
                                                size: 17.0),
                                            Icon(Icons.star_border,
                                                color: Theme.Colors.secondcolor,
                                                size: 17.0),
                                          ],
                                        ))
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[

                                        Flexible(child:
                                        Text(
                                          "This dish is my favourite.  Love it!!",
                                          style: TextStyle(
                                              color: Theme.Colors.blackcolor,
                                              fontSize: 15.0,
                                              fontFamily: "ubuntu"),
                                        ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          )
                        ],
                        controller: _tabController,
                      )))),


              Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          child: Icon(Icons.timelapse, color: Color(0xff0000e6), size: 40.0,),
                        ),
                        Text("12pm-3pm", style: TextStyle(
                          color: Theme.Colors.greycolor, fontSize: 15.0, fontFamily: "ubuntu"
                        ),)
                      ],
                    ),

                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          child: Icon(Icons.directions, color: Color(0xff5EDA9E), size: 40.0,),
                        ),
                        Text("3.5km", style: TextStyle(
                            color: Theme.Colors.greycolor, fontSize: 15.0, fontFamily: "ubuntu"
                        ),)
                      ],
                    ),

                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          child: Icon(Icons.map, color: Color(0xffff0000), size: 40.0,),
                        ),
                        Text("Map View", style: TextStyle(
                            color: Theme.Colors.greycolor, fontSize: 15.0, fontFamily: "ubuntu"
                        ),)
                      ],
                    ),

                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          child: Icon(Icons.motorcycle, color: Theme.Colors.orangecolor, size: 40.0,),
                        ),
                        Text("Delivery", style: TextStyle(
                            color: Theme.Colors.greycolor, fontSize: 15.0, fontFamily: "ubuntu"
                        ),)
                      ],
                    ),


                  ],
                ),
              )
            ],
          ),
        ));
  }
}
