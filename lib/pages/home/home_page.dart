import 'package:flutter/material.dart';
 
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String img_user = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _logo(),
            SizedBox(height: 65),      
            _users()
          ]
        ),
      )
    );
  }

  Widget _logo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          'assets/images/logo_app.png', 
          width: 150, 
          height: 100
        ),
        Text('Facil y rapido')
      ]
    );
  }

  Widget _users() {
    return Center(
      child: 
        Column(
          children: [
            Text('Seleccione el rol', style: TextStyle(
              fontSize: 24.0,
              color: Colors.black45,
              
            )),
            SizedBox(height: 50),
            _rol('Admin'),
            SizedBox(height: 50),
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
          backgroundColor: Colors.amberAccent,
        ),
        Text(rol_user, style: TextStyle(
          fontSize: 18.0
        ))
      ]
    );
  }
}
