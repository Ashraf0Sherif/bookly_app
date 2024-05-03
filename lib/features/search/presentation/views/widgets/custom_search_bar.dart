import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final double borderRadius = 16;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: TextFormField(
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return "Field is required";
          }
          return null;
        },
        cursorColor: Colors.red,
        cursorRadius: const Radius.circular(20),
        cursorHeight: 19,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Opacity(
              opacity: 0.8,
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 22,
              ),
            ),
          ),
          hintText: 'Search for a book',
          hintStyle: const TextStyle(color: Colors.white60),
          border: buildOutLineInputBorder(),
          enabledBorder: buildOutLineInputBorder(),
          focusedBorder: buildOutLineInputBorder(),
          errorBorder: buildOutLineInputBorder(),
        ),
        onFieldSubmitted: (text) {
          if (_formKey.currentState!.validate()) {
          } else {
            autovalidateMode = AutovalidateMode.always;
            setState(() {});
          }
        },
      ),
    );
  }

  OutlineInputBorder buildOutLineInputBorder() {
    return OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.white70),
          borderRadius: BorderRadius.circular(borderRadius),
        );
  }
}
