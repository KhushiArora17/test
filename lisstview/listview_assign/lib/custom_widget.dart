import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    // required this.validator,
    required this.controller,
    required this.texthint,
    required this.keyboard,
    required this.suffixicon,

    // this.tooglepassword,
    //  this.isvisible = true,
    required this.validator,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextField();

  final String texthint;
  // ignore: override_on_non_overriding_member
  final TextEditingController controller;

  // bool isvisible = true;
  //user never enter wrong data type by entering the text regexp
  final suffixicon;
  final TextInputType keyboard;
  final String? Function(String?)? validator;
  // final String? Function(String?)? tooglepassword;
}

class _CustomTextField extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    var texthint;
    var controller;
    var obscuretext;
    final String label;
    var suffixicon;

    return Center(
        child: Column(children: [
      Container(
        margin: EdgeInsets.all(5),
        child: TextFormField(
          validator: widget.validator,
          decoration: InputDecoration(
              suffixIcon: widget.suffixicon,
              hintText: widget.texthint,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              )),
          autocorrect: false,
          controller: widget.controller,
        ),
      ),
    ]));
  }
}
