import 'package:flutter/material.dart';
import 'package:nike/card/carddataverify.dart';

class CardDetails extends StatefulWidget {
  @override
  _CardDetailsState createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  TextEditingController accno = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController ccv = TextEditingController();
  TextEditingController exp = TextEditingController();
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  bool validate = false;

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
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
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
                          'XXXX     XXXX     XXXX     XXXX',
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
                                  'CVV',
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
                                  '* **********',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 13.8),
                                ),
                                Text(
                                  'MM/YY',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 13.8),
                                ),
                                Text(
                                  '###',
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
            Divider(),
            SizedBox(
              height: 480,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: key,
                  autovalidate: validate,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Card Number :",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (String arg) {
                            if (arg.length == 0) {
                              return "*Card number cannot be empty";
                            } else if (arg.length != 16) {
                              return "*Enter valid number";
                            } else {
                              return null;
                            }
                          },
                          controller: accno,
                          maxLength: 16,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              errorStyle:
                                  TextStyle(fontWeight: FontWeight.w600),
                              contentPadding: EdgeInsets.all(8),
                              hintStyle: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: "Enter Your Card Number",
                              prefixIcon: Icon(Icons.credit_card)),
                        ),
                      ),
                      Divider(
                        height: 10,
                      ),
                      Text(
                        "Card Holder :",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (String args) {
                            if (args.length == 0) {
                              return "Name can't be empty";
                            } else if (args.length < 3) {
                              return "Name must be more than 2 characters";
                            } else {
                              return null;
                            }
                          },
                          textCapitalization: TextCapitalization.characters,
                          controller: name,
                          decoration: InputDecoration(
                              errorStyle:
                                  TextStyle(fontWeight: FontWeight.w600),
                              contentPadding: EdgeInsets.all(8),
                              hintStyle: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: "Enter Card Holder Name",
                              prefixIcon: Icon(Icons.person)),
                        ),
                      ),
                      Divider(
                        height: 10,
                      ),
                      Text(
                        "CVV :",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (String args) {
                            if (args.length == 0) {
                              return "CVV can't be empty";
                            } else if (args.length != 3) {
                              return "Enter a valid number";
                            } else {
                              return null;
                            }
                          },
                          controller: ccv,
                          maxLength: 3,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              errorStyle:
                                  TextStyle(fontWeight: FontWeight.w600),
                              contentPadding: EdgeInsets.all(6),
                              hintStyle: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: "CVV",
                              prefixIcon: Icon(Icons.branding_watermark)),
                        ),
                      ),
                      Divider(
                        height: 10,
                      ),
                      Text(
                        "Expiry date :",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (String args) {
                            if (args.length == 0) {
                              return "Date Can't be empty";
                            } else if (args.length < 5) {
                              return "Enter valid date";
                            } else {
                              return null;
                            }
                          },
                          controller: exp,
                          maxLength: 5,
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                              errorText: validate
                                  ? "*Expirey date can't be empty"
                                  : null,
                              errorStyle:
                                  TextStyle(fontWeight: FontWeight.w600),
                              contentPadding: EdgeInsets.all(6),
                              hintStyle: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: "MM/YY",
                              prefixIcon: Icon(Icons.date_range)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.blueAccent,
        child: FlatButton(
          onPressed: () {
            setState(() {
              if (key.currentState.validate() == true) {
                return carddata(context);
              } else {
                return null;
              }
            });
          },
          child: Text(
            'Verify',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
      ),
    );
  }

  void carddata(BuildContext context) {
    String accnum = accno.text;
    String accname = name.text;
    String ccvnum = ccv.text;
    String expdate = exp.text;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CardDataVerify(
          accnum: accnum,
          accname: accname,
          ccvnum: ccvnum,
          expdate: expdate,
        ),
      ),
    );
  }
}
