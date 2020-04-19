import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

class Map extends StatefulWidget {
  @override

  _Map createState() => _Map();
}

class _Map extends State<Map> {

  bool _tryAgain = false;

    @override
    void initState() {
      super.initState();
      _checkWifi();
    }

    _checkWifi() async {
      // the method below returns a Future
      var connectivityResult = await (new Connectivity().checkConnectivity());
      bool connectedToWifi = (connectivityResult == ConnectivityResult.wifi);
      if (!connectedToWifi) {
        _showAlert(context);
      }
      if (_tryAgain != !connectedToWifi) {
        setState(() => _tryAgain = !connectedToWifi);
      }
    }

  Widget build(BuildContext context) {

      var body = Container(
        alignment: Alignment.center,
        child: _tryAgain
          ? RaisedButton(
              child: Text("Try again"),
              onPressed: () {
                _checkWifi();
            })
          : Text("This device is connected to Wifi"),
      );

      return Scaffold(
      appBar: AppBar(
        title: Text("Traking Devision", style: TextStyle(color: Colors.white, fontSize: 25),),
        centerTitle: true,
      ),
      body: body,
      );

  }

  void _showAlert(BuildContext context) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Wifi"),
            content: Text("Wifi not detected. Please activate it."),
          )
      );
    }
}