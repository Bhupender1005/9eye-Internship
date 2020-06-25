import 'package:flutter/material.dart';
import 'package:coming_soon/booking.dart';

void main() => runApp(MaterialApp(
      home: ComingSoon(),
    ));

class ComingSoon extends StatefulWidget {

  @override
  _ComingSoonState createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
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

      body: Container(
          child: Column(
              children: <Widget>[
                  SizedBox(height: 70.0),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 45, 0),
                      child: Text(
                        'Welcome to 9eye!',
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'Gilroy-Bold',
                            fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Container(
                      height: 328,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/shopping.png'),
                              fit: BoxFit.fill
                          )
                      )
                  ),
                  SizedBox(height: 40.0),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.purple[600],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                              BoxShadow(
                              color: Colors.purple[900],
                              blurRadius: 20,
                              offset: Offset(0, 10)
                          )],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                            "We're coming soon!",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Gilroy-Regular',
                                fontSize: 25,
                                wordSpacing: 1.5,
                            ),

                            ),
                      ),
                  ),
              ],
              ),
      ),
      //body: Center(
        //child: Image.asset('assets/shopping.png'),
        // child: Text(
        //     "We're coming soon!",
        //     style: TextStyle(
        //                       color: Colors.pink[900],
        //                       fontSize: 38,
        //                       fontFamily: 'Gilroy-Bold',
        //                       fontWeight: FontWeight.bold
        //                   ),
        //                   ),
      //),
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
