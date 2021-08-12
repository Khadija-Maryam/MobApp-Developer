import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(children: <Widget>[
          Image.asset('images/House1.png', fit: BoxFit.fitWidth),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "The Baker's House",
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
                ),
                Row(
                  children: [
                    Icon(Icons.star),
                    Text(
                      "4.5",
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(
              children: <Widget>[
                Icon(Icons.call),
                CallButton(),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.location_pin),
                RouteButton(),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.share),
                ShareButton(), // app lost consistency here. Share Button was supposed to be an ElevatedButton according to previous patter.
              ],
            ),
          ]),
          Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 10.0),
              color: Colors.white,
              child: Text(
                "The Baker family ranch is a large property located within the parishes of Dulvey, " +
                    "Louisiana. It was owned by the Baker family so they could raise cattle and own horses. " +
                    "The ranch's immediate area was a hidden salt-mine as well as harsh swampland. " +
                    "The property also included a Greenhouse, Main House, Old House, Testing Area (Barn), " +
                    "Boat House as well as the Guest House.",
                textAlign: TextAlign.justify,
              )),
        ])),
      ),
    );
  }
}

class CallButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = ElevatedButton(
      child: Text(
        "CALL",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: () {
        order1(context);
      },
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
    var button = ElevatedButton(
      child: Text(
        "ROUTE",
      ),
      onPressed: () {
        order2(context);
      },
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
              child: Text(
                  'Share this mysterious place with your friends and family.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    decoration: TextDecoration.none,
                  )),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('SHARE'),
      onPressed: () => _show(context),
    );
  }
}
