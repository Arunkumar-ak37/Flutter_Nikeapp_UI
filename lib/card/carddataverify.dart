import 'package:flutter/material.dart';
import 'package:nike/orderplaced.dart';

class CardDataVerify extends StatelessWidget {
  final String accnum;
  final String accname;
  final String ccvnum;
  final String expdate;

  CardDataVerify(
      {Key key,
      @required this.accnum,
      @required this.accname,
      @required this.ccvnum,
      @required this.expdate})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Check Your Card Details",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                return Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "x",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 250,
              color: Colors.grey[80],
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[500],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.3, 0.0),
                          colors: [Colors.blue[500], Colors.greenAccent],
                          tileMode: TileMode.repeated)),
                  width: 320,
                  height: 180,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        right: 10.0,
                        top: 5.0,
                        child: Text(
                          'VISA ',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.italic,
                              fontSize: 23,
                              color: Colors.white,
                              letterSpacing: 1.5),
                        ),
                      ),
                      Positioned(
                        left: 10.0,
                        bottom: 90.0,
                        child: Text(
                          accnum,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.w300,
                              shadows: [
                                Shadow(
                                    blurRadius: 5.0,
                                    color: Colors.white,
                                    offset: Offset(0.5, 0.5))
                              ]),
                        ),
                      ),
                      Positioned(
                        top: 110,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: 270,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'CARD HOLDER',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white60,
                                      fontSize: 14),
                                ),
                                Text(
                                  'EXPIRES',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white60,
                                      fontSize: 14),
                                ),
                                Text(
                                  'CCV',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white60,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 130,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: 270,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  accname,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 13.8),
                                ),
                                Text(
                                  expdate,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 13.8),
                                ),
                                Text(
                                  ccvnum,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 13.8),
                                )
                              ],
                            ),
                          ),
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
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.blueAccent,
        child: FlatButton(
            onPressed: () {
              return Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return OrderPlaced();
                },
              ));
            },
            child: Text(
              "Proceed Payment",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            )),
      ),
    );
  }
}
