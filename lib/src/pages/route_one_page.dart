import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:states_flutter_app/src/pages/route_two_page.dart';

class RouteOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'Route One' ),
      ),
      body: UserInfo(),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.arrow_forward_ios ),
        onPressed: () => Navigator.pushNamed(context, 'route_two'),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: Column(
        children: [
          CustomCard('Name', 'SubTitle'),
          CustomCard('Age', 'SubTitle'),
          CustomCard('Profession 01', 'SubTitle'),
          CustomCard('Profession 02', 'SubTitle'),
          CustomCard('Profession 03', 'SubTitle'),
        ],
      ),
    );
  }

  Widget CustomCard(String cTitle, String cSubtitle){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
      child: Column(
        children: [
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue, ),
            title: Text(cTitle),
            subtitle: Text(cSubtitle),
          ),
        ],
      ),
    );
  }
}



