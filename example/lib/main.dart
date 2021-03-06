import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:view_model_provider/view_model_provider.dart';

import 'child_provider_example.dart';
import 'list_example.dart';
import 'provider_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ViewModelExample(),
    );
  }
}

class ViewModelExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                push(context, ProviderExample());
              },
              child: Text("BaseExample"),
            ),
            ElevatedButton(
              onPressed: () {
                push(context, ProviderWidgetExample());
              },
              child: Text("BaseExtendsExample"),
            ),
            ElevatedButton(
              onPressed: () {
                push(context, ChildProviderExample());
              },
              child: Text("ChildExapmle"),
            ),
            ElevatedButton(
              onPressed: () {
                push(context, ListProviderExapmle());
              },
              child: Text("ListExapmle"),
            ),
          ],
        ),
      ),
    );
  }

  push(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return SafeArea(top: true, child: widget);
    }));
  }
}
