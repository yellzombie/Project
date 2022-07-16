import 'package:flutter/material.dart';

class View extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/pro.jpg'),
              radius: 60,
              child: Container(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(Icons.edit,color: Colors.yellowAccent,),
                ),
              ),
            ),
            Center(
              child: Text(
                "Ankit Subedi",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  color: Colors.white,
                  letterSpacing: 4,
                ),
              ),
            ),
            Center(
              child: Text("Flutter Developer",textAlign: TextAlign.center,style: TextStyle(
                fontFamily: "SansBold",
                fontSize: 20,
                color: Colors.white,
                letterSpacing: 2,

              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              color: Colors.blue[50],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                leading: Icon(Icons.call, color: Colors.blue[900],),
                title: Text("+977 9863335185",style: TextStyle(color: Colors.black,fontFamily: 'Sans'),),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              color: Colors.blue[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                leading: Icon(Icons.mail, color: Colors.blue[500],),
                title: Text("076bct011.ankit@sagarmatha.edu.np",style: TextStyle(color: Colors.black,fontFamily: 'Sans'),),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              color: Colors.blue[500],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.blue[200],),
                title: Text("Panchdhara,Swoyambhu",style: TextStyle(color: Colors.black,fontFamily: 'Sans'),),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              color: Colors.blue[900],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                leading: Icon(Icons.work, color: Colors.blue[50],),
                title: Text("Sanepa,Lalitpur",style: TextStyle(color: Colors.black,fontFamily: 'Sans'),),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Click ",
                  ),
                  WidgetSpan(
                    child: Icon(Icons.add, size: 14,color: Colors.yellowAccent,),
                  ),
                  TextSpan(
                    text: " to add",
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