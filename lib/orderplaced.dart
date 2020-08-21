import 'package:flutter/material.dart';

import 'main.dart';

class OrderPlaced extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Home(),
        ));
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blueAccent,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  return Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "x",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 22),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blueAccent,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 50,
                left: 30,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white24),
                ),
              ),
              Positioned(
                top: 20,
                left: 230,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white38),
                ),
              ),
              Positioned(
                top: 90,
                left: 350,
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white24),
                ),
              ),
              Positioned(
                top: 150,
                left: 150,
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white54),
                ),
              ),
              Positioned(
                top: 200,
                left: 280,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white60),
                ),
              ),
              Positioned(
                top: 600,
                left: 200,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white24),
                ),
              ),
              Positioned(
                top: 500,
                left: 100,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white54),
                ),
              ),
              Positioned(
                top: 550,
                left: 380,
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white38),
                ),
              ),
              Positioned(
                top: 300,
                left: 20,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white12),
                ),
              ),
              Positioned(
                top: 400,
                left: 300,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white70),
                ),
              ),
              Positioned(
                  left: 0.0,
                  right: 0.0,
                  top: 200.0,
                  bottom: 0.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Center(
                          child: Icon(
                            Icons.done,
                            size: 35,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'ORDER PLACED',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white30,
                        ),
                        height: 70,
                        width: 250,
                        child: Padding(
                          padding: EdgeInsets.all(9.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Expected Delivery',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white60),
                              ),
                              Text(
                                '## ***',
                                style: TextStyle(
                                    fontSize: 18.5,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
