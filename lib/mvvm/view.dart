import 'package:flutter/material.dart';
import 'package:flutter_mvvm/mvvm/view_model.dart';
import 'package:flutter_mvvm/core/cache.dart';
import 'package:flutter_mvvm/view/view_mixin.dart';

part "package:flutter_mvvm/view/view_input_field.dart";

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> with ViewMixin {
  final ViewModelClass _viewModel = ViewModelClass(CacheClass());

  @override
  Widget build(BuildContext context) {
    double mHeight = MediaQuery.sizeOf(context).height;
    double mWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BasicInputField(
                userNameController: userNameController,
                onChange: onControllerChange),
            ValueListenableBuilder<bool>(
                valueListenable: isValidForTextController,
                builder: (context, value, child) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(mWidth * 0.7, mHeight * 0.06),
                    ),
                    onPressed: value == false
                        ? null
                        : () async {
                            final response =
                                await _viewModel.controlToUserName(basicModel);
                            await controlToResult(result: response);
                          },
                    child: const Text('Save'),
                  );
                })
          ],
        ),
      ),
    );
  }
}
