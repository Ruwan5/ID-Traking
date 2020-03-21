import 'package:flutter/material.dart';


class Details extends StatefulWidget {
  final String value;
  Details({Key key, this.value}) : super(key: key);

  @override 
  _Details createState() => _Details();
}


class _Details extends State<Details> {
  String value;
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.value}"),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
               begin: Alignment.topRight,
               end: Alignment.bottomLeft,
               colors: [Colors.blue, Colors.red]
             )
          ),
          child: Center(
            child: Text("${widget.value}",
            style: TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.bold,
              color: Colors.white),
            ),
            
          ),
        )
        
        // child: Text(
        //   "ID number: ${widget.value}"),
        
      ),
      
    );
  }
}




