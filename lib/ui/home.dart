import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.orangeAccent,
            /*width: 192.0,
            height: 62.0,
            margin: EdgeInsets.only(left:50.0),*/
            padding: EdgeInsets.only(left: 16.0, top: 20.0),
            child: new Column(
              children: <Widget>[
                new Row(children: <Widget>[
                  Expanded(
                      child: Text(
                    "Mahazong",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 30.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.normal,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    "Tomato, Garlic",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 15.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.normal,
                    ),
                  ))
                ]),
                new Row(children: <Widget>[
                  Expanded(
                      child: Text(
                    "Margherita",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 30.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.normal,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    "Tomato, Mozarella, Basil",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 15.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.normal,
                    ),
                  ))
                ]),
                new PizzaImageAsset(),
                new OrderButton()
              ],
            )));
  }
}


class PizzaImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('images/pizza1.png');
    Image image = new Image(image: assetImage, width: 400.0, height: 200,);
    return new Container(child: image);
  }

}


class OrderButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    var button = new Container(
        margin: EdgeInsets.only(top: 50.0),
        child: RaisedButton(
          child: Text("Order your pizza"),
          elevation: 5.0,
          color: Colors.lightGreen,
          onPressed: (){
              order(context);
                        },
                      ),
                  );
                  return button;
                }
}

void order(BuildContext context) {
  var alert = new AlertDialog(
    title: Text("Placed Order"),
    content: Text("Thanks for your order!"),
  );

  showDialog(
    context: context, 
    builder: (BuildContext context) => alert);
}