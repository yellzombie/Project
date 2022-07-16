import 'package:flutter/material.dart';


class Description extends StatelessWidget {
  final String name, description, bannerurl, posterurl, vote, launch_on;

  const Description({super.key, required this.name, required this.description, required this.bannerurl, required this.posterurl, required this.vote, required this.launch_on});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: ListView(children: [
          Container(
              height: 250,
              child: Stack(children: [
                Positioned(
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      bannerurl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    child: Text( '⭐ Average Rating - ' + vote,style: TextStyle(fontFamily: 'Roboto',fontSize: 18,color: Colors.black),)),
              ])),
          SizedBox(height: 15),
          Container(
              padding: EdgeInsets.all(10),
              child: Text(
                   name != null ? name : 'Not Loaded',style: TextStyle(fontFamily: 'Roboto',fontSize: 16,color: Colors.white), )),
          Container(
              padding: EdgeInsets.only(left: 10),
              child:
              Text('Releasing On - ' + launch_on,)),
          Row(
            children: [
              Container(
                height: 200,
                width: 100,
                child: Image.network(posterurl),
              ),
              Flexible(
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text( description,style: TextStyle(fontSize: 14,fontFamily: 'Roboto',color: Colors.white,),)),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
