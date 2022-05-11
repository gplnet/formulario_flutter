// ignore_for_file: prefer_const_constructors, unnecessary_this

import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget child;

  const CardContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: double.infinity,
        //height: 300,
        padding: EdgeInsets.all(20),
        decoration: _createCArdShape(),
        child: this.child,
      ),
    );
  }

  BoxDecoration _createCArdShape() => BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 15, offset: Offset(0, 15))
          ]);
}
