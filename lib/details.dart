import 'package:flutter/material.dart';
import 'package:idtraking/main.dart';
import 'Animation/FadeAnimation.dart';

class Details extends StatefulWidget {
  final String value;


  Details({Key key, this.value,}) : super(key: key);

  @override
  _Details createState() => _Details();

}


class _Details extends State<Details> {
  String id;
  String year;
  String month;
  String date;
  String age;
  String gender;

  @override

  void initState() {
    String year1;

    // assign ID value
    id = widget.value;

    // calculate bone year
      var lst = new List(2);
      if(id.length == 10){
        for(var i=0; i<2; i++){
          lst[i] = id[i];
        }
      year1 = lst[0] + lst[1];

      if(lst[0] == "0" || lst[0] == "1") {
        year = "20"+year1;
      }
      else{
        year = "19"+year1;
      }

    // calculate bone month


    }
    else{
      //if id lenth is 12
    }


    return super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(
        leading: new Container(),
        title: Text("NIC Information", style: TextStyle(color: Colors.white, fontSize: 25),),
        centerTitle: true,
        // backgroundColor: Colors.transparent,
        // elevation: 0.0,

      ),
      backgroundColor: Colors.white,

      body: Container(

        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/images/background.png'),
        //   ),
        // ),
        // padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Container(
        child:Padding(
          padding: EdgeInsets.all(30.0 ),
          child: Column(
            children: <Widget>[
              FadeAnimation(1,
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

                          child: Text("NIC No           :   $id"+ "\n"+
                                      "Bone Year     :   $year "+"\n"+
                                      "Bone Month  :   May",
                          style: TextStyle(color: Colors.black, fontSize:20 , fontWeight: FontWeight.bold),
                          ),
                        ),
              ),
              ),
          SizedBox(height: 30.0,),
          FadeAnimation(1.3,
          Container(

                        height: 80,
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(143, 148, 251, 1),
                              Color.fromRGBO(143, 148, 251, .6)
                            ]
                          ),

                        ),


                        child: Center(

                          child: Text("Track",
                          style: TextStyle(color: Colors.white, fontSize:20 , fontWeight: FontWeight.bold),
                          ),
                        ),

                      ),
          ),
          SizedBox(height: 20.0,),
          FadeAnimation(1.5,
          GestureDetector(
            onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => new Home()));
            },
           child:Container(

                        height: 80,
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(143, 148, 251, 1),
                              Color.fromRGBO(143, 148, 251, .6)
                            ]
                          ),

                        ),


                        child: Center(

                          child: Text("Back",
                          style: TextStyle(color: Colors.white, fontSize:20 , fontWeight: FontWeight.bold),
                          ),
                        ),

                      ),
          )
          )
          ],

          ),

        )

        )

      ),


    );
  }
}
