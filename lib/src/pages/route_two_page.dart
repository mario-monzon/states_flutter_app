import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:states_flutter_app/src/models/user.dart';
import 'package:states_flutter_app/src/services/user_service.dart';

class RouteTwoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final userService = Provider.of<UserService> (context);

    return Scaffold(
      appBar: AppBar(
        title: userService.userExists ? Text('${userService.user.name}') : Text('Route Two'),
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
                final newUser = new User(
                    name: 'Jhon',
                    age: 34,
                    professions: [
                      'FullStack Developer',
                      'DevOps',
                      'Mobile Developer',
                    ],
                );
                userService.user = newUser;
            }),
            MaterialButton(
                child: Text(
                  'Set Age',
                  style: TextStyle(
                      color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () => userService.changeAge( 28 )
            ),
            MaterialButton(
                child: Text(
                  'Add Profession',
                  style: TextStyle(
                      color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: (){
                  userService.addProfession();
           }),
          ],
        ),
      ),
    );
  }
}
