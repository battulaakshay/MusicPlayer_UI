// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewBox extends StatelessWidget {
  final child;
  const NewBox({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Center(
          child: child,
        ),
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade900,
                  blurRadius: 15,
                  offset: Offset(5, 5)),
              BoxShadow(
                  color: Colors.white, blurRadius: 15, offset: Offset(-5, -5))
            ]),
      ),
    );
  }
}
