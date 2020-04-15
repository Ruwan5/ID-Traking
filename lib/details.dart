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
  int date;
  int age;
  var dob;
  String gender;


  @override

  void initState() {
    String year1;
    String month1;
    int month3;
    int month4;
    int currentYear;


    // assign ID value
    id = widget.value;

    // calculate bone year

    if(id.length == 10){

      var lst = new List(10);
      for(var i=0; i<10; i++){
        lst[i] = id[i];
      }

      year1 = lst[0] + lst[1];

      if(lst[0] == "0" || lst[0] == "1") {
        year = "20"+year1;
      }
      else{
        year = "19"+year1;
      }


      month1 = lst[2]+lst[3]+lst[4];
      int month2 = int.parse(month1);

    //check gender

      if(month2 > 366){
        gender = "Female";
        month3 = month2 - 500;
      }
      else{
        gender = "Male";
        month3 = month2;
      }

    // calculate bone month and date

      if(0 < month3 && month3 <= 31){
        month = "January";
        month4 = 01;
        date = month3;
      }
      if(31 < month3 && month3 <= 60){
        month = "February";
        month4 = 02;
        date = month3 - 31;
      }
      if(60 < month3 && month3 <= 91){
        month = "March";
        month4 = 03;
        date = month3 - 60;
      }
      if(91 < month3 && month3 <= 121){
        month = "April";
        month4 = 04;
        date = month3 - 91;
      }
      if(121 < month3 && month3 <= 152){
        month = "May";
        month4 = 05;
        date = month3 - 121;
      }
      if(152 < month3 && month3 <= 182){
        month = "June";
        month4 = 06;
        date = month3 - 152;
      }
      if(182 < month3 && month3 <= 213){
        month = "July";
        month4 = 07;
        date = month3 = 182;
      }
      if(213 < month3 && month3 <= 244){
        month = "Augest";
        month4 = 08;
        date = month3 - 213;
      }
      if(244 < month3 && month3 <= 274){
        month = "September";
        month4 = 09;
        date = month3 - 244;
      }
      if(274 < month3 && month3 <= 305){
        month = "Octomber";
        month4 = 10;
        date = month3 - 274;
      }
      if(305 < month3 && month3 <= 335){
        month = "Novermber";
        month4 = 11;
        date = month3 - 305;
      }
      if(335 < month3 && month3 <= 366){
        month = "December";
        month4 = 12;
        date = month3 - 335;
      }

    // calculate age
      //get current date
     var dob1 = "$year/$month4/$date";
     dob = dob1;
      var yearInt = int.parse(year);  // converting string to int
      var now = new DateTime.now();
      currentYear = now.year;
      age = currentYear - yearInt;


    }

    //if id lenth is 12

    if(id.length == 12){

      var lst = new List(12);
      for(var i=0; i<12; i++){
          lst[i] = id[i];
      }

      //calculate bone year

      year1 = lst[0] + lst[1] + lst[2]+ lst[3];
      year = year1;
      // check gender

      month1 = lst[4]+lst[5]+lst[6];
      int month2 = int.parse(month1);

      if(month2 > 366){
        gender = "Female";
        month3 = month2 - 500;
      }
      else{
        gender = "Male";
        month3 = month2;
      }

      //calculate bone month

      if(0 < month3 && month3 <= 31){
        month = "January";
        month4 = 01;
        date = month3;
      }
      if(31 < month3 && month3 <= 60){
        month = "February";
        month4 = 02;
        date = month3 - 31;
      }
      if(60 < month3 && month3 <= 91){
        month = "March";
        month4 = 03;
        date = month3 - 60;
      }
      if(91 < month3 && month3 <= 121){
        month = "April";
        month4 = 04;
        date = month3 - 91;
      }
      if(121 < month3 && month3 <= 152){
        month = "May";
        month4 = 05;
        date = month3 - 121;
      }
      if(152 < month3 && month3 <= 182){
        month = "June";
        month4 = 06;
        date = month3 - 152;
      }
      if(182 < month3 && month3 <= 213){
        month = "July";
        month4 = 07;
        date = month3 = 182;
      }
      if(213 < month3 && month3 <= 244){
        month = "Augest";
        month4 = 08;
        date = month3 - 213;
      }
      if(244 < month3 && month3 <= 274){
        month = "September";
        month4 = 09;
        date = month3 - 244;
      }
      if(274 < month3 && month3 <= 305){
        month = "Octomber";
        month4 = 10;
        date = month3 - 274;
      }
      if(305 < month3 && month3 <= 335){
        month = "Novermber";
        month4 = 11;
        date = month3 - 305;
      }
      if(335 < month3 && month3 <= 366){
        month = "December";
        month4 = 12;
        date = month3 - 335;
      }

      // calculate age
      //get current date
     var dob1 = "$year/$month4/$date";
     dob = dob1;
      var yearInt = int.parse(year1);  // converting string to int
      var now = new DateTime.now();
      currentYear = now.year;
      age = currentYear - yearInt;


    }


    return super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar:  AppBar(
        leading: new Container(),
        title: Text("NIC Information", style: TextStyle(color: Colors.white, fontSize: 25),),
        centerTitle: true,
        // backgroundColor: Colors.transparent,
        // elevation: 0.0,

      ),
      backgroundColor: Colors.white,

      body: Container(

        child: Container(
        child:Padding(
          padding: EdgeInsets.all(30.0 ),
          child: Column(
            children: <Widget>[
              FadeAnimation(1,
              Container(
                height: 180,
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
                                      "Bone Month  :   $month"+"\n"+
                                      "Bone Date     :   $date"+"\n"
                                      "DOB                :  $dob"+ "\n"+
                                      "Gender           :   $gender"+"\n"+
                                      "Age                 :   $age ",

                          style: TextStyle(color: Colors.black, fontSize:17 , fontWeight: FontWeight.bold),
                          ),

                        ),
              ),
              ),
          SizedBox(height: 30.0,),
          FadeAnimation(1.3,
          Container(

                        height: 60,
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

                        height: 60,
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
