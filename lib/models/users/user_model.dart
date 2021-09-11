import 'package:flutter/material.dart';

class DataModel {
  final int id;
  final String name;
  final String phone;

  DataModel({@required this.id, @required this.name, @required this.phone});
}

class User {
  final String time;
  final String name;
  final String image;
  final String mes;

  User({
    this.name,
    this.image,
    this.mes,
    this.time
  });

}
