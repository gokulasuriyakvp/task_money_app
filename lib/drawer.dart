
import 'package:flutter/material.dart';

import 'home.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Login/Register'),
            leading: Icon(Icons.person,color: Colors.deepOrange,),
          ),
          ListTile(
            title: Text('Fixed Deposit'),
            leading: Icon(Icons.savings,color: Colors.deepOrange,),
          ),
          ListTile(
            title: Text('NFO'),
            leading: Icon(Icons.blur_circular_sharp,color: Colors.deepOrange,),
          ),
          ListTile(
            title: Text('Explore Funds'),
            leading: Icon(Icons.cable,color: Colors.deepOrange,),
          ),ListTile(
            title: Text('Campare Funds'),
            leading: Icon(Icons.cabin_outlined,color: Colors.deepOrange,),
          ),
          ListTile(
            title: Text('Calucator'),
            leading: Icon(Icons.calculate,color: Colors.deepOrange,),
          ),
          ListTile(
            title: Text('Learn MF'),
            leading: Icon(Icons.reduce_capacity,color: Colors.deepOrange,),
          ),
          SizedBox(height: 350),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app,color: Colors.deepOrange,),
            onTap:() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen(),));
            },
          )
        ],
      ),
    );
  }
}
