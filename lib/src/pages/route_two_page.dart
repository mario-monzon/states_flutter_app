import 'package:flutter/material.dart';
import 'package:states_flutter_app/src/models/user.dart';
import 'package:states_flutter_app/src/services/user_service.dart';

class RouteTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
        stream: userService.userStream,
        builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
          return snapshot.hasData ? Text(snapshot.data.name)  : Text('Route Two');
        },),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text(
                'Set User',
                style: TextStyle(
                    color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: (){
                final newUser = new User( name: 'Peter', age: 37 );
                userService.loadUser(newUser);
            }),
            MaterialButton(
                child: Text(
                  'Set Age',
                  style: TextStyle(
                      color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: (){
                  userService.changeAge(31);
            }),
            MaterialButton(
                child: Text(
                  'Add Profession',
                  style: TextStyle(
                      color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: (){

           }),
          ],
        ),
      ),
    );
  }
}
