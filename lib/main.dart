import '';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
       backgroundColor: Colors.white,
        nextScreen: MyHomePage(),
        splash: Image(
          image: AssetImage('assets/ljk.jpg'),
        ),
        splashTransition: SplashTransition.slideTransition,
        splashIconSize : 300,
      ),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.purple.shade100,
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
       child: ListView(
         children: [
           Container(
               height: MediaQuery.of(context).size.height*.3,
               width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 //borderRadius: BorderRadius.all(Radius.circular(300.0)),
                 gradient: LinearGradient(
                   colors: [
                     Colors.blue,
                     Colors.purpleAccent,
                   ],

                 ),
                 image: DecorationImage(
                   image: AssetImage('assets/amr.jpg'),
                   fit: BoxFit.fitWidth,
                 )
               ),



           ),
           SizedBox(height: 10.0),
         ],
       ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top:10.0),
        children: [
          Text(
            '  SEARCH FOR COUNTRY :',
            style: TextStyle(
                fontSize: 17.0,
                color: Colors.black
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 15.0,left: 15.0 ,right: 15.0,top:5.0),
            margin: EdgeInsets.only(bottom: 10.0,left: 15.0 ,right: 15.0,top:5.0),
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(300.0)),
              gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.purpleAccent,
                  ],

              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                 Icons.search,
                  color: Colors.white,
                  size: 20.0,
                ),
              ],
            )

          ),
          SizedBox(height: 10.0),
          Text(
            '  RECOMMENDED',
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.0,
              color: Colors.black
            ),
          ),
          SizedBox(height: 15.0),
          Container(
            height: 190,
            width: double.infinity,
            padding: EdgeInsets.only(left: 8,right:16),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget> [
                _buildItem('assets/bd.jpg','BANGALADESH'),
                _buildItem('assets/trk.jpg','TURKEY'),
                _buildItem('assets/taj.jpg','INDIA'),
                _buildItem('assets/amr.jpg','AMERICA'),
                _buildItem('assets/lndn.jpg','LONDON'),
              ],
            ),
          ),
          SizedBox(height: 15),
          Text(
            '   BANGLADESH',
            style: TextStyle(
                fontSize: 15.0,
                letterSpacing: 1.0,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: MediaQuery.of(context).size.height-500 ,
            width:  379,
            margin : EdgeInsets.only(bottom: 30),
           padding: EdgeInsets.only(left: 16,right:16,bottom: 10),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget> [
                _buildItem2("COX'S BAZAR",'assets/cox.jpg'),
                _buildItem2('SUNDERBANS','assets/sun.jpg'),
                _buildItem2('SRIMANGAL','assets/sri.jpg'),
                _buildItem2('RANGAMATI','assets/rang.jpg'),
                _buildItem2('PAHARPUR','assets/paha.jpg'),
              ],
            ),
          ),
        ],

      ),
    );
  }

 Widget _buildItem( String t , String s) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Container(
            height:160,
            width: 130,

            decoration: BoxDecoration(
              gradient: RadialGradient(
                  colors:[
                    Colors.blue,
                    Colors.pink,
                  ]
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              image: DecorationImage(
                image: AssetImage(t),
                fit: BoxFit.fill
              )
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            s,
            style: TextStyle(
                fontSize: 15.0,
                letterSpacing: 1.0,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
        ],
      ),

    );
 }

 Widget _buildItem2(String s, String t) {
    return  Row(
      children: [
        Container(
          height: 100,
          width:379,
          padding: EdgeInsets.only(left: 10.0),
          margin: EdgeInsets.only(top: 10.0),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            gradient: LinearGradient(
                colors:[
                  Colors.blue.shade200,
                  Colors.pink.shade200,
                ]
            ),
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            color: Colors.red,
            border: Border.all(),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height:50,
                  width:100,
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                          colors:[
                            Colors.blue,
                            Colors.pink,
                          ]
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      image: DecorationImage(
                          image: AssetImage(t),
                          fit: BoxFit.fill
                      )
                  ),
                ),
                Text(
                  s,
                  style: TextStyle(
                      fontSize: 15.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.black,
                )

              ],
            )
          ),
        ),
      ],
    );
 }
}
