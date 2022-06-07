import 'package:flutter/material.dart';
import 'package:listview_assign/app.dart';
import 'package:listview_assign/custom_widget.dart';
import 'package:listview_assign/extension.dart';

class SignPage extends StatelessWidget {
  @override
  final _formkey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();

  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  @override
  late String namecontroller, phonecontroller, emailcontroller;
  final Function(App)? addUser;
  SignPage({this.addUser, Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Form(
                key: _formkey,
                child: SingleChildScrollView(
                    child: Column(children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'WELCOME',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      )),
                  CustomTextField(
                    controller: name,
                    texthint: 'name',
                    keyboard: TextInputType.name,
                    suffixicon: Icon(Icons.person),
                    validator: (val) {
                      if (val!.isValidName) return 'Enter the name';
                      return null;
                    },
                  ),

                  //     ontap: passwordvisible3,

                  CustomTextField(
                    controller: email,
                    texthint: 'email',
                    keyboard: TextInputType.name,
                    suffixicon: Icon(Icons.email_outlined),
                    validator: (val) {
                      if (val!.isValidEmail) return 'Please Enter  Valid email';
                      return null;
                    },
                    //         ontap: passwordvisible3,
                  ),
                  CustomTextField(
                    controller: phone,
                    texthint: 'phonenumber',
                    keyboard: TextInputType.phone,

                    suffixicon: Icon(Icons.phone),
                    validator: (val) {
                      if (val!.isValidPhone) {
                        return 'Enter Valid 10 Digit Number ';
                      }

                      return null;
                    },
                    //  ontap: passwordvisible3,
                  ),
                  Container(
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      margin: EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: TextButton.styleFrom(
                            primary: Colors.black, onSurface: Colors.purple),
                        child: const Text('ADD'),
                        onPressed: () {
                          final user = App();
                          bool:
                          false;
                          addUser!(user);
                          User.userlist.add(User('email', 'phone', 'name'));
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                builder: (context) => App(),
                              ));
                          if (_formkey.currentState!.validate()) {
                            return;
                          }
                        },
                      )),
                ])))));
  }
}
