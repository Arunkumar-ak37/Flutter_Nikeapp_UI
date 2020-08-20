import 'package:flutter/material.dart';
import 'package:nike/card/carddetails.dart';

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
              size: 35,
            ),
            onPressed: () {
              return Navigator.pop(context);
            }),
        actions: [
          IconButton(
              icon: Icon(
                Icons.bookmark,
                color: Colors.black,
                size: 30,
              ),
              onPressed: null)
        ],
      ),
      body: ListView(children: [
        Container(
          child: Container(
            height: 290,
            color: Colors.white70,
            child: Column(
              children: [
                Expanded(
                    child: Stack(
                  children: [
                    Positioned(
                      right: -300.0,
                      top: -3.0,
                      child: Container(
                        width: 740.0,
                        height: 700.0,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent, shape: BoxShape.circle),
                      ),
                    ),
                    Positioned(
                      top: 70.0,
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Image.network(
                          "https://www.sportsshoes.com/media/image/product-series/nike-air-structure/top-shoe.png"),
                    ),
                    Positioned(
                        top: 70.0,
                        left: -240.0,
                        right: 0.0,
                        child: Container(
                          child: Center(
                              child: Text(
                            "\$45",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          )),
                          height: 75,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.grey[200]),
                        ))
                  ],
                ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nike",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ADD TO BAG",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Icon(Icons.shopping_basket)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 0.0),
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 28,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 28,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 28,
              ),
              Icon(
                Icons.star_half,
                color: Colors.amber,
                size: 28,
              ),
              Icon(
                Icons.star,
                color: Colors.grey[400],
                size: 28,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "3.5",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        " | ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Text("(340)",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.blueAccent),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "The Nike GTX Shoe borrows design lines from the heritage runners the Nike react tech",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontSize: 17),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Size",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Center(
                              child: Text(
                            "5.5",
                            style: TextStyle(fontSize: 17),
                          )),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Center(
                              child: Text(
                            "6.0",
                            style: TextStyle(fontSize: 17),
                          )),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Center(
                              child: Text(
                            "6.5",
                            style: TextStyle(fontSize: 17),
                          )),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Center(
                              child: Text(
                            "7.0",
                            style: TextStyle(fontSize: 17),
                          )),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Center(
                              child: Text(
                            "7.5",
                            style: TextStyle(fontSize: 17),
                          )),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Center(
                              child: Text(
                            "8.0",
                            style: TextStyle(fontSize: 17),
                          )),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Color",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    InkWell(
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.blue),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.red),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.orangeAccent),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(color: Colors.blueAccent),
        child: FlatButton(
          onPressed: () {
            return Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CardDetails(),
                ));
          },
          child: Text(
            "BUY NOW",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
