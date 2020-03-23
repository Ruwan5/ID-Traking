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
               colors: [Colors.white, Colors.white]
             )
          ),
        child:Padding(
          padding: EdgeInsets.all(30.0 ),
          child: Column(
            children: <Widget>[

              Container(
                height: 300,
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                          BoxShadow(
                           color: Color.fromRGBO(143, 148, 251, 1),
                           blurRadius: 20.0,
                           offset: Offset(0, 10)
                      )
                    ]

                    ),
                        child: Center(

                          child: Text("Ruwan",
                          style: TextStyle(color: Colors.black, fontSize:20 , fontWeight: FontWeight.bold),
                          ),
                        ),
              ),

            ],

          ),

        )

          // child: Center(
          //   child: Text("${widget.value}",
          //   style: TextStyle(
          //     fontSize: 48.0,
          //     fontWeight: FontWeight.bold,
          //     color: Colors.white),
          //   ),

          // ),


        )

      ),


    );
  }
}
