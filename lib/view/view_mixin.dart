import 'package:flutter/material.dart';
import 'package:flutter_mvvm/demo_screen.dart';
import 'package:flutter_mvvm/mvvm/model.dart';
import 'package:flutter_mvvm/mvvm/view.dart';
import 'package:kartal/kartal.dart';

mixin ViewMixin on State<ViewPage> {
  final TextEditingController userNameController = TextEditingController();
  String get valueForName => userNameController.value.text;
  ValueNotifier<bool> isValidForTextController = ValueNotifier<bool>(false);

  BasicModel get basicModel => BasicModel(valueForName);

  void onControllerChange(String value) {
    isValidForTextController.value = value.length > 3;
  }

  Future<void> controlToResult({bool result = false}) async {
    if (result) {
      await context.route.navigateToPage(const DemoDart());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('User name is not valid'),
        ),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    userNameController.dispose();
  }
}
