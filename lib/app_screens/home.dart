// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.deepPurple,
            padding: EdgeInsets.only(left: 10.0, top: 60.0),
            // width: 200.0,
            // height: 100.0,
            // margin: EdgeInsets.only(left: 50.0, top: 50.0),
            // padding: EdgeInsets.all(80.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text("Spice Jet",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 35.0,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w700,
                              //fontStyle: FontStyle.italic,
                              color: Colors.white,
                            ))),
                    Expanded(
                        child: Text("From Kigali to Amsterdam through Berlin",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20.0,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w700,
                              //fontStyle: FontStyle.italic,
                              color: Colors.white,
                            ))),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text("RwandAir Jet",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 35.0,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w700,
                              //fontStyle: FontStyle.italic,
                              color: Colors.white,
                            ))),
                    Expanded(
                        child: Text("From Kigali to London",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20.0,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w700,
                              //fontStyle: FontStyle.italic,
                              color: Colors.white,
                            ))),
                  ],
                ),
                FlightImageAsset(),
                FlightBookButton(),
              ],
            )));
  }
}

class FlightImageAsset extends StatelessWidget {
  const FlightImageAsset({super.key});

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/flight.png');
    Image image = Image(
      image: assetImage,
      width: 250.0,
      height: 250.0,
    );
    return Container(
      child: image,
    );
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 50.0),
        width: 250.0,
        height: 50.0,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepOrange)),
            child: Text("Book Your Flight",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                )),
            onPressed: () => bookFlight(context)));
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight Booked Successfully"),
      content: Text("have a Pleasant Flight"),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) => alertDialog,
    );
  }
}
