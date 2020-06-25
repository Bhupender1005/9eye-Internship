import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:coming_soon/coming_soon.dart';

void main() => runApp(MaterialApp(
      home: Booking(),
    ));

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _gotoProduct() {
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => ComingSoon(),
        ),
        );
  }
  void _gotoBooking() {
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => Booking(),
        ),
        );
  }

  DateTime _date;
  TimeOfDay _time;

  List<Color> _colors = [Colors.purple[100], Colors.purple[600]];
  List<double> _stops = [0.0, 0.9];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image.asset(
              'assets/logo.png',
              fit: BoxFit.cover,
              height: 70.0,
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(
              Icons.menu, 
              color: Colors.purple[600],
              ), // set your co
              onPressed: () {
              _scaffoldKey.currentState.openDrawer();
          },
        ),
        elevation: 0.0,
      ),
      drawer: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.purple[50],
          ),
              child: Drawer(
                  child: ListView(
                      children: <Widget>[
                          DrawerHeader(
                              decoration: BoxDecoration(
                                  color: Colors.purple[50],
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 10.0, 20.0),
                child: Row(children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    //   backgroundImage: AssetImage('assets/profilepic.jpg'),
                    radius: 40.0,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'John Doe',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Gilroy-Bold',
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ]),
              ),
            ),

            SizedBox(height: 45.0,),

            InkWell(
                onTap: (){
                    Navigator.of(context).pop();
                },
                splashColor: Colors.purple[100],
                highlightColor: Colors.purple[100],
                child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                      child: Icon(Icons.account_circle, color: Colors.black,),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 10.0),
                      child: Text(
                          'My Account',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Gilroy-Bold',
                              fontWeight: FontWeight.bold
                          ),
                          ),
                    ),
              ),
            ),

            InkWell(
                onTap: (){
                    _gotoBooking();
                },
                splashColor: Colors.purple[100],
                highlightColor: Colors.purple[100],
                child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                      child: Icon(Icons.description, color: Colors.black,),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 10.0),
                      child: Text(
                          'Book Now',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Gilroy-Bold',
                              fontWeight: FontWeight.bold
                          ),
                          ),
                    ),
              ),
            ),

            InkWell(
                onTap: (){
                    Navigator.of(context).pop();
                },
                splashColor: Colors.purple[100],
                highlightColor: Colors.purple[100],
                child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                      child: Icon(Icons.question_answer, color: Colors.black,),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 10.0),
                      child: Text(
                          'Contact Us',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Gilroy-Bold',
                              fontWeight: FontWeight.bold
                          ),
                          ),
                    ),
              ),
            ),

            InkWell(
                onTap: (){
                    _gotoProduct();
                },
                splashColor: Colors.purple[100],
                highlightColor: Colors.purple[100],
                child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                      child: Icon(Icons.shopping_cart, color: Colors.black,),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 10.0),
                      child: Text(
                          'Products',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Gilroy-Bold',
                              fontWeight: FontWeight.bold
                          ),
                          ),
                    ),
                ),
            ),

            InkWell(
                onTap: (){
                    Navigator.of(context).pop();
                },
                splashColor: Colors.purple[100],
                highlightColor: Colors.purple[100],
                child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                      child: Icon(Icons.people, color: Colors.black,),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 10.0),
                      child: Text(
                          'About Us',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Gilroy-Bold',
                              fontWeight: FontWeight.bold
                          ),
                          ),
                    ),
                ),
            ),
            //   UserAccountsDrawerHeader(
            //       accountName: Text(
            //           'Sanya Swain'
            //       ),
            //       accountEmail: Text(
            //           'sanyaswain16@gmail.com'
            //       )
            //       )
          ],
        )),
      ),

      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 35.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 20, 0),
              child: Row(
                  children: <Widget>[
                      Text(
                          _date == null ? 'Select a Date' : 'Booking Date: ${DateFormat.yMMMd().format(_date)}',
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Gilroy-Regular',
                            fontWeight: FontWeight.normal
                        ),
                      ),
                      //${_dateTime.day}/${_dateTime.month}/${_dateTime.year}

                      SizedBox(width: 30),
                      IconButton(
                          icon: Icon(
                          Icons.calendar_today,
                          size: 30,
                            ),
                            alignment: Alignment.center,
                            color: Colors.purple[600],
                            onPressed: () {
                          showDatePicker(
                              context: context, 
                              initialDate: _date == null ? DateTime.now() : _date, 
                              firstDate: DateTime(2020), 
                              lastDate: DateTime(2021)
                              ).then((date) {
                                  setState(() {
                                    _date = date;
                                  });
                              });
                            }
                            ),
                  ]
              ),
            ),

            SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 20, 0),
              child: Row(
                children: <Widget>[
                  Text(
                              _time == null ? 'Select a Time' : "Booking Time: ${_time.format(context)}",
                              style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Gilroy-Regular',
                              fontWeight: FontWeight.normal
                          ),
                          ),
                  
                  SizedBox(width: 25),
                  IconButton(
                          icon: Icon(
                              Icons.alarm,
                              size: 35,
                          ),
                          alignment: Alignment.center,
                          color: Colors.purple[600],
                          onPressed: () {
                              showTimePicker(
                                  context: context, 
                                  initialTime: _time == null ? TimeOfDay.now() : _time
                                  ).then((time) {
                                      setState(() {
                                        _time = time;
                                      });
                                  });
                          }
                          )
                ],
              ),
            ),

            SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
              child: Text(
                  "No. of Persons",
                  style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Gilroy-Regular',
                                fontWeight: FontWeight.normal
                            ),
                  textAlign: TextAlign.start,
              ),
            ),
            
            SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: FlutterRatingBar(
                  itemCount: 5,
                  fillColor: Colors.purple[600],
                  borderColor: Colors.purple,
                  onRatingUpdate: (rating) {
                      print(rating);
                      },
                  ),
            ),

            SizedBox(height: 270),

            Padding(
              padding: const EdgeInsets.fromLTRB(70, 0, 70, 0),
              child: Container(
                  alignment: Alignment(0, 0),
                        decoration: BoxDecoration(
                            color: Colors.purple[600],
                            gradient: LinearGradient(
                                colors: _colors,
                                stops: _stops,
                                ),
                            borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                              "Book Appointment",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Gilroy-Regular',
                                  fontSize: 25,
                                  wordSpacing: 1.5,
                              ),

                              ),
                        ),
                    ),
            ),
        ],
      ),

      bottomNavigationBar:
          BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              elevation: 0.0,
              items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 15.0, 30.0, 0.0),
            child: Icon(Icons.account_circle),
          ),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 15.0, 30.0, 0.0),
            child: Icon(Icons.description),
          ),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 15.0, 30.0, 0.0),
            child: Icon(Icons.shopping_cart),
          ),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 15.0, 30.0, 0.0),
            child: Icon(Icons.question_answer),
          ),
          title: Text(''),
        ),
      ]),
    );
  }
}
