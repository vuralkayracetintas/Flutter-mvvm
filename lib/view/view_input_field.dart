part of 'package:flutter_mvvm/mvvm/view.dart';

class BasicInputField extends StatelessWidget {
  const BasicInputField({
    Key? key,
    required this.userNameController,
    required this.onChange,
  }) : super(key: key);

  final TextEditingController userNameController;
  final ValueChanged<String> onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onChanged: onChange,
        controller: userNameController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter your username',
        ),
      ),
    );
  }
}
