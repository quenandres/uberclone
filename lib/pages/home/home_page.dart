import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String img_user = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipPath(
              clipper: DiagonalPathClipperTwo(),
              child: _logo(),
            ),            
            _users()
          ]
        ),
      )
    );
  }

  Widget _logo() {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/images/logo_app.png', 
            width: 150, 
            height: 100
          ),
          Text('Facil y rapido')
        ]
      ),
    );
  }

  Widget _users() {
    return Center(
      child: 
        Column(
          children: [
            Text('SELECIONE EL ROL', style: TextStyle(
              fontSize: 24.0,
              color: Colors.white              
            )),
            SizedBox(height: 40),
            _rol('Admin'),
            SizedBox(height: 40),
            _rol('Driver')
          ]
        )      
    );
  }

  _rol(String rol_user) {    
    if( rol_user == 'Admin' ){
      this.img_user = 'pasajero.png';
    } else {
      this.img_user = 'driver.png';
    }
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/'+this.img_user),
          radius: 50,
          backgroundColor: Colors.amberAccent[500],
        ),
        Text(rol_user, style: TextStyle(
          fontSize: 18.0,
          color: Colors.white
        ))
      ]
    );
  }
}
