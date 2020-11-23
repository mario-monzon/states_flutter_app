import 'package:flutter/material.dart';

class RouteTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'Route Two' ),
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

            }),
            MaterialButton(
                child: Text(
                  'Set Age',
                  style: TextStyle(
                      color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: (){

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
