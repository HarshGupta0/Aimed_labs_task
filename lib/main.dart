import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
            title: Text('Responsive Card Design'),
            backgroundColor: Colors.purple.shade200,
        ),
        body: SafeArea(
          child: Column(
            children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.red.shade300,
                  margin:  EdgeInsets.only(left: 30,right: 30,top: 20,bottom: 20),
                  padding: EdgeInsets.only(left: 30,right: 20,top: 20,bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: 120,
                        color: Colors.grey,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/35
                        ),
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.green.shade300,
                      ),
                    ],
                  ),
                ),
              SizedBox(height: 120,),
                Stack(
                  alignment: Alignment.center,
                  children: [
                  Container(
                    // width: MediaQuery.of(context).size.width,
                    color: Colors.red.shade300,
                    margin:  EdgeInsets.only(left: 30,right: 30,top: 20,bottom: 20),
                    padding: EdgeInsets.only(left: 30,right: 20,top: 20,bottom: 20),
                    child: Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/35
                      ),
                      height: 30,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.green.shade300,
                    ),
                  ),
                  Positioned(
                    top: 3,
                    child:Center(child: Container(
                      height: 40,
                      width: 130,
                      color: Colors.grey,
                    ),),
                  ),
                ],)
            ],
          ),
        ),
      ),
    );
  }
}
