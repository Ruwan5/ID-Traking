
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './details.dart';
import 'Animation/FadeAnimation.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
    debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }
}


class Home extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}


class _MyHomepageState extends State<Home> {
  var nicNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();

        return Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset : false,
          body: Container(

            child: Column(

              children: <Widget>[
                FadeAnimation(1, Container(
                  height: 324,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                    ),
                  ),
                child: Container(
                   child: Text("ID Traking",
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 45,
                     fontWeight: FontWeight.bold
                     ),
                    ),
                    alignment: Alignment(0.0, -0.6),
                ),
              )),
              Padding(
                padding: EdgeInsets.all(21.0 ),

                child: Form(
                  key: _formkey,
                  child: Column(
                    children: <Widget>[

                 FadeAnimation(1.3,Container(
                  padding: EdgeInsets.all(0),

                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),

                    boxShadow: [

                      BoxShadow(
                        color: Color.fromRGBO(143, 148, 251, 1),
                        blurRadius: 20.0,
                        offset: Offset(0, 10)
                      )
                    ]

                  ),

                  child: Column(

                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          border:Border(bottom: BorderSide(color: Colors.grey[100]))
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "NIC Number",
                            hintStyle: TextStyle(color: Colors.grey[400]),

                          ),
                          controller: nicNumberController,
                          validator: ( value){
                            if(value.isEmpty) {
                              return 'Enter NIC number';
                            }
                            if(value.length == 10){
                                var validCharactors = RegExp(r'^[0-9]{9}[vV]{1}$');
                                if(validCharactors.hasMatch(value) ){
                                  if(value.endsWith('v') || value.endsWith('V') ){
                                    return null;
                                  }
                                  else{
                                    return 'Invalid NIC number';
                                  }

                                }
                                else{
                                  return 'Invalid NIC number';
                                }


                            }
                            if(value.length == 12){
                                var validnumbers = RegExp(r'^[0-9]{12}$');
                                if(validnumbers.hasMatch(value)){

                                  return null;
                                }
                                else{
                                  return "Invalid NIC number";
                                }
                            }
                            else {
                              return 'NIC must be 10 or 12 characters';

                            }


                          },
                          onChanged: (value) {

                          },
                        ),
                      ),

                    ]
                  ),

                )
                ),

                SizedBox(height: 20.0,),

                      FadeAnimation(1.5,
                      GestureDetector(
                        onTap: () {
                          if(_formkey.currentState.validate()){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>
                            new Details(value:nicNumberController.text)));
                          }

                        },
                      child: Container(

                        height: 50,
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

                          child: Text("Search",
                          style: TextStyle(color: Colors.white, fontSize:20 , fontWeight: FontWeight.bold),
                          ),
                        ),

                      )
                      ),
                    )

              ],
            ),
            )
          ),
        ],
        ),
      ),
    );
  }
}
