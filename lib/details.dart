// import 'dart:html';

import 'package:flutter/material.dart';

//Fetching json data with http request in flutter
class DetailsPage extends StatelessWidget {
  var reciveData;

  DetailsPage(this.reciveData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 100,
          child: Text(reciveData["email"]),

        ),

      ));
  }
}