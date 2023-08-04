import 'package:flutter/material.dart';

pushNavigation(BuildContext context, {required Widget pushNav}) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return pushNav;
  }));
}
