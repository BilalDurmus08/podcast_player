import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() {
    return _MyTextFieldState();
  }
}

class _MyTextFieldState extends State<MyTextField> {
  //create controller
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 28, bottom: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).primaryColor,
        ),
        child: TextField(
          controller: _textController,
          decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                borderSide: BorderSide.none),
            hintText: 'Search',
            hintStyle: const TextStyle(
              fontSize: 18,
              color: Color.fromARGB(150, 255, 255, 255),
            ),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              style: ButtonStyle(iconSize: MaterialStateProperty.all(35)),
            ),
          ),
        ),
      ),
    );
  }
}
