import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 Widget listTileWidget({IconData iconData, String title, Function onpressed}) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blueGrey[100],
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 5,
      ),
      child: ListTile(
        leading: Icon(
          iconData,
          size: 30,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        onTap: onpressed,
      ),
    );
  }