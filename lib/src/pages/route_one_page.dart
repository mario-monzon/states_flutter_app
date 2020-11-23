import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:states_flutter_app/src/models/user.dart';
import 'package:states_flutter_app/src/services/user_service.dart';

class RouteOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final userService = Provider.of<UserService>(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => userService.removeUser(),
          ),
        ],
        title: Text( 'Route One' ),
      ),
      body:
        userService.userExists ? UserInfo( userService.user ) : Center(child: Text('No information'),),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.arrow_forward_ios ),
        onPressed: () => Navigator.pushNamed(context, 'route_two'),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {

  final User user;

  const UserInfo( this.user );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: Column(
        children: [
          CustomCard('Name', '${ user.name }'),
          CustomCard('Age', '${ user.age }'),
          ...user.professions.map((profession) => CustomCard('Profesión', profession) )
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




