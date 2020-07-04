import 'package:flutter/material.dart';
class SettingOnePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Setting'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(8.0),
              color: Colors.purple,
              child: ListTile(
                title: Text("John Doe"),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/user-icon-jpg-2.png"),
                ),
                  trailing: Icon(Icons.edit),
              ),
            )
          ],
        ),
      ),
    );
  }
}