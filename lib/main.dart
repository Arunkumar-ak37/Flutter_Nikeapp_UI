import 'dart:io';

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:nike/productdetails.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  final String nikelogo =
      "http://www.pngpix.com/wp-content/uploads/2016/07/PNGPIX-COM-Nike-Logo-PNG-Transparent-1.png";
  final String shoepic =
      "https://www.sportsshoes.com/media/image/product-series/nike-air-structure/top-shoe.png";

  @override
  Widget build(BuildContext context) {
    Future<bool> back() {
      return showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: Colors.blueAccent[500],
              title: Text("Are you sure ?"),
              content: Text("Do you want to exit your app"),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    child: Text(
                      "No",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.blue),
                    ),
                    onTap: () => Navigator.of(context).pop(false),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    child: Text(
                      "Yes",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.grey),
                    ),
                    onTap: () => exit(0),
                  ),
                )
              ],
            ),
          ) ??
          false;
    }

    return WillPopScope(
      onWillPop: () {
        return back();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.white70,
          leading: IconButton(
              icon: Icon(
                Icons.short_text,
                size: 38,
                color: Colors.black87,
              ),
              onPressed: () {}),
          title: Center(
            child: Image.network(
              nikelogo,
              height: 32,
            ),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black87,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.bookmark_border,
                  color: Colors.black87,
                ),
                onPressed: null),
          ],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 250,
              child: Carousel(
                images: [
                  Image.asset('images/pc1.jpg'),
                  Image.asset('images/pc6.jpg'),
                  Image.asset('images/pc2.jpg'),
                  Image.asset('images/pc4.jpg'),
                  Image.asset('images/pc5.jpg'),
                ],
                boxFit: BoxFit.cover,
                autoplay: true,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(microseconds: 800),
                dotSize: 5.0,
                dotBgColor: Colors.white10,
                dotColor: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Discover Your',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Favourite footware',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(style: BorderStyle.solid)),
                  hintText: "Search Shoes",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Running Shoes",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        return Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetails(),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[50],
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            )),
                        height: 300,
                        width: 200,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0.0,
                              right: 30.0,
                              top: 0.0,
                              bottom: 0.0,
                              child: Image.network(
                                shoepic,
                                height: 200,
                                width: 150,
                              ),
                            ),
                            Positioned(
                              top: 0.0,
                              right: 0.0,
                              child: Icon(
                                Icons.bookmark_border,
                                size: 35,
                              ),
                            ),
                            Positioned(
                              bottom: 0.0,
                              right: 0.0,
                              left: 0.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Nike Air',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Text(
                                          "\$45",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 68,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          bottomRight: Radius.circular(5.0),
                                        )),
                                    child: Icon(
                                      Icons.shopping_basket,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[50],
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            )),
                        height: 300,
                        width: 200,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0.0,
                              right: 30.0,
                              top: 0.0,
                              bottom: 0.0,
                              child: Image.network(
                                shoepic,
                                height: 200,
                                width: 150,
                              ),
                            ),
                            Positioned(
                              top: 0.0,
                              right: 0.0,
                              child: Icon(
                                Icons.bookmark_border,
                                size: 35,
                              ),
                            ),
                            Positioned(
                              bottom: 0.0,
                              right: 0.0,
                              left: 0.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Nike Air',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Text(
                                          "\$45",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 68,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          bottomRight: Radius.circular(5.0),
                                        )),
                                    child: Icon(
                                      Icons.shopping_basket,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[50],
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            )),
                        height: 300,
                        width: 200,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0.0,
                              right: 30.0,
                              top: 0.0,
                              bottom: 0.0,
                              child: Image.network(
                                shoepic,
                                height: 200,
                                width: 150,
                              ),
                            ),
                            Positioned(
                              top: 0.0,
                              right: 0.0,
                              child: Icon(
                                Icons.bookmark_border,
                                size: 35,
                              ),
                            ),
                            Positioned(
                              bottom: 0.0,
                              right: 0.0,
                              left: 0.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Nike Air',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Text(
                                          "\$45",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 68,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          bottomRight: Radius.circular(5.0),
                                        )),
                                    child: Icon(
                                      Icons.shopping_basket,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Basketball Shoes",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[50],
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            )),
                        height: 300,
                        width: 200,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0.0,
                              right: 30.0,
                              top: 0.0,
                              bottom: 0.0,
                              child: Image.network(
                                shoepic,
                                height: 200,
                                width: 150,
                              ),
                            ),
                            Positioned(
                              top: 0.0,
                              right: 0.0,
                              child: Icon(
                                Icons.bookmark_border,
                                size: 35,
                              ),
                            ),
                            Positioned(
                              bottom: 0.0,
                              right: 0.0,
                              left: 0.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Nike Air',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Text(
                                          "\$45",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 68,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          bottomRight: Radius.circular(5.0),
                                        )),
                                    child: Icon(
                                      Icons.shopping_basket,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[50],
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            )),
                        height: 300,
                        width: 200,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0.0,
                              right: 30.0,
                              top: 0.0,
                              bottom: 0.0,
                              child: Image.network(
                                shoepic,
                                height: 200,
                                width: 150,
                              ),
                            ),
                            Positioned(
                              top: 0.0,
                              right: 0.0,
                              child: Icon(
                                Icons.bookmark_border,
                                size: 35,
                              ),
                            ),
                            Positioned(
                              bottom: 0.0,
                              right: 0.0,
                              left: 0.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Nike Air',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Text(
                                          "\$45",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 68,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          bottomRight: Radius.circular(5.0),
                                        )),
                                    child: Icon(
                                      Icons.shopping_basket,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[50],
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            )),
                        height: 300,
                        width: 200,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0.0,
                              right: 30.0,
                              top: 0.0,
                              bottom: 0.0,
                              child: Image.network(
                                shoepic,
                                height: 200,
                                width: 150,
                              ),
                            ),
                            Positioned(
                              top: 0.0,
                              right: 0.0,
                              child: Icon(
                                Icons.bookmark_border,
                                size: 35,
                              ),
                            ),
                            Positioned(
                              bottom: 0.0,
                              right: 0.0,
                              left: 0.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Nike Air',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Text(
                                          "\$45",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 68,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          bottomRight: Radius.circular(5.0),
                                        )),
                                    child: Icon(
                                      Icons.shopping_basket,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
