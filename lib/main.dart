import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
 home: NinjaCard() ,
));
 
    
class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

   @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
      title: Text(' ID Card'),
      centerTitle: true,
      backgroundColor: Colors.grey[850],
      elevation: 0.0,
     ),
     floatingActionButton: FloatingActionButton(
       onPressed: () {
         setState(() {
          ninjaLevel += 1;
         });
       },
       child: Icon(Icons.add),
       backgroundColor: Colors.grey[800],
       
       ),
     body: Padding(
       padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0) ,
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget> [
         Center(
           child: CircleAvatar(
        backgroundImage: 
        AssetImage('assets/Waynetipsy.jpg'),
        radius: 40.0,
         ),
         ),
        Divider(
          height: 50.0,
          color: Colors.white,
        ),
         Text( 'Name',
        style: TextStyle(
          color: Colors.white,
          letterSpacing: 2.0,
        ),
       ),
      SizedBox(height: 10.0,),
       Text( 'Waynetipsy',
        style: TextStyle(
          color: Colors.amberAccent[200],
          letterSpacing: 2.0,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
       ),
       SizedBox(height: 30.0),
       
         Text( 
           'CURRENT NINJA LEVEL',
        style: TextStyle(
          color: Colors.white,
          letterSpacing: 2.0,
        ),
       ),
      SizedBox(height: 10.0,),
       Text( '$ninjaLevel',
        style: TextStyle(
          color: Colors.amberAccent[200],
          letterSpacing: 2.0,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
       ),
       SizedBox(height: 30.0,),
       Row(
         children: <Widget>[
         Icon(
           Icons.email,
           color: Colors.white,
         ),
         SizedBox(width:10.0),
         Text('jacketoniru@gmail.com',
         style: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        letterSpacing: 1.0,
           ),
         ),
         ],
         ),
        ],
        ),
       ),
     );
    }
}

  