import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            color: Colors.white70,
            child: Column(children: <Widget>[
              HouseImageWidget(),
              Row(
                  children: <Widget>[
                    Expanded(
                        child: Column(
                      children: <Widget>[
                        Text("The Baker's House",
                          style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 20),
                        ),
                        Text(
                          "Dulvey, Louisiana,USA",
                          style: TextStyle(
                              color: Colors.black26,
                              decoration: TextDecoration.none,
                              fontSize: 15),
                        )
                      ],
                    )),
                    Container(
                      padding: EdgeInsets.only(left: 250.0, right: 5.0),
                      child: Star(),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: 
                    Text(
                        "4.5",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 13),
                      ),),
                  ],
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0, left: 100.0, right: 100.0, bottom: 10.0),
                child: Row(children: <Widget>[
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      CallImageWidget(),
                      CallButton(),
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      NaviImageWidget(),
                      Container(
                        color: Colors.blue,
                        child: RouteButton(),),
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      Container(
                         margin: EdgeInsets.only(bottom: 5.0),
                         child: ShareImageWidget(),),
                      ShareButton(),
                    ],
                  )),
                ]),
              ),
              Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 10.0),
                  color: Colors.white,
                  child: Text(
                      "The Baker family ranch is a large property located within the parishes of Dulvey, "+
                      "Louisiana. It was owned by the Baker family so they could raise cattle and own horses. "+
                      "The ranch's immediate area was a hidden salt-mine as well as harsh swampland. " +
                      "The property also included a Greenhouse, Main House, Old House, Testing Area (Barn), "+
                      "Boat House as well as the Guest House.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        decoration: TextDecoration.none,
                      ))),
            ])
            ));
  }
}

class HouseImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset1 = AssetImage('images/House1.png');
    Image image1 = Image(
      image: pizzaAsset1,
      width: 500.0,
      height: 350.0,
    );
    return Container(child: image1);
  }
}

class Star extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage star = AssetImage('images/star.png');
    Image image = Image(
      image: star,
      width: 25.0,
      height: 25.0,
    );
    return Container(child: image);
  }
}

class NaviImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset1 = AssetImage('images/navi.png');
    Image image1 = Image(
      image: pizzaAsset1,
      width: 35.0,
      height: 35.0,
    );
    return Container(child: image1);
  }
}

class CallImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset1 = AssetImage('images/call.png');
    Image image1 = Image(
      image: pizzaAsset1,
      width: 35.0,
      height: 35.0,
    );
    return Container(child: image1);
  }
}

class ShareImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset1 = AssetImage('images/share.png');
    Image image1 = Image(
      image: pizzaAsset1,
      width: 30.0,
      height: 30.0,
    );
    return Container(child: image1);
  }
}

class CallButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      color: Colors.blue,
      child: RaisedButton(
        child: Text("CALL",style: TextStyle(
                        color: Colors.white,),),
        color: Colors.lightGreen,
        elevation: 10,
        onPressed: () {
          order1(context);
        },
      ),
    );
    return button;
  }

  void order1(BuildContext context) {
    var alert = SimpleDialog(
      title: Text("Call to know about available time-slots."),
    );
    showDialog(context: context, builder: (BuildContext context) => alert);
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      color: Colors.white,
      child: RaisedButton(
        child: Text("ROUTE",style: TextStyle(
                        color: Colors.white,),),
        color: Colors.black26,
        elevation: 10,
        onPressed: () {
          order2(context);
        },
      ),
    );
    return button;
  }

  void order2(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Open Location on Maps"),
      content: Text("Are you sure you want to open location?"),
    );
    showDialog(context: context, builder: (BuildContext context) => alert);
  }
}

class ShareButton extends StatelessWidget {
  void _show(BuildContext ctx) {
    showModalBottomSheet(
        elevation: 10,
        backgroundColor: Colors.lightBlue,
        context: ctx,
        builder: (ctx) => Container(
              width: 300,
              height: 150,
              color: Colors.white54,
              alignment: Alignment.center,
              child: Text('Share this mysterious place with your friends and family.',
              style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        decoration: TextDecoration.none,
                      )),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ElevatedButton(
        child: Text('SHARE'),
        onPressed: () => _show(context),
      ),
    );
  }
}
