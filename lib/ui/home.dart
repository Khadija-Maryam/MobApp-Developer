import 'dart:html';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 70.0, left: 55.0),
            color: Colors.deepOrangeAccent,
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text("MEXICAN SPICE:  ",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 30,
                          decoration: TextDecoration.none,
                          fontFamily: 'PaletteMosaic',
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                  Expanded(
                    child: Text("Mozirilla, Chicken, Pineapple,",
                    //textColor: Colors.black,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 20,
                          decoration: TextDecoration.none,
                          fontFamily: 'PaletteMosaic',
                          fontWeight: FontWeight.w700,
                        )),
                  )
                ],
              ),
              PizzaImageWidget1(),
              // OrderButton(),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text("Beer Pizza:  ",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 30,
                          decoration: TextDecoration.none,
                          fontFamily: 'PaletteMosaic',
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                  Expanded(
                    child: Text("Cheese, Beer",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 20,
                          decoration: TextDecoration.none,
                          fontFamily: 'PaletteMosaic',
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                ],
              ),
              PizzaImageWidge2(),
              OrderButton(),
            ])
            /*width: 192.0,
      height: 96.0,*/
            //margin: EdgeInsets.only(left: 50.0),

            ));
  }
}

class PizzaImageWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset1 = AssetImage('images/Pizza1.png');
    Image image1 = Image(
      image: pizzaAsset1,
      width: 200.0,
      height: 200.0,
    );
    return Container(child: image1);
  }
}

class PizzaImageWidge2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset1 = AssetImage('images/Pizza2.png');
    Image image1 = Image(
      image: pizzaAsset1,
      width: 150.0,
      height: 150.0,
    );
    return Container(child: image1);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Order Your Pizza"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
    return button;
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order Successfull"),
      content: Text("Thanks For The Money"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) => alert
        );
  }
}
