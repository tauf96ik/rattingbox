import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product Layout Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Listing")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(
              name: "I-Phone",
              description: "I-Phone Is The Stylist Phone Ever",
              price: 1000,
              image: "findme.png"),
          ProductBox(
              name: "Pixel",
              description: "Pixel Is The Most Featureful Phone Ever",
              price: 800,
              image: "hounds1.jpg"),
          ProductBox(
              name: "Laptop",
              description: "Laptop Is Most Productive Development Tool",
              price: 2000,
              image: "hounds2.jpg"),
          ProductBox(
              name: "Tablet",
              description: "Tablet Is The Most Useful Device Ever For Meeting",
              price: 1500,
              image: "hounds2a.jpg"),
          ProductBox(
              name: "Pendrive",
              description: "Pendrive Is a Tool To Ponter a Projet Monitor",
              price: 100,
              image: "wsf2.jpg"),
          ProductBox(
              name: "Floppy Drive",
              description: "Floppy Drive Is a Tool To Save a Data",
              price: 20,
              image: "yama.png"),
        ],
      ),
    );
  }
}

class RatingBox extends StatefulWidget {
  @override
  _RatingBoxState createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  int _counter = 0;

  void _setRatingAsOne() {
    setState(() {
      _counter = 1;
    });
  }

  void _setRatingAsTwo() {
    setState(() {
      _counter = 2;
    });
  }

  void _setRatingAsThree() {
    setState(() {
      _counter = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    double _size = 20;
    print(_counter);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_counter >= 1
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            onPressed: _setRatingAsOne,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_counter >= 2
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            onPressed: _setRatingAsTwo,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_counter >= 3
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            onPressed: _setRatingAsThree,
            iconSize: _size,
          ),
        ),
      ],
    );
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 140,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(image),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(this.name,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(this.description),
                  Text("Price: " + this.price.toString()),
                  RatingBox(),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
