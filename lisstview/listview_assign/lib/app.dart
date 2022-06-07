import 'package:flutter/material.dart';
import 'package:listview_assign/home_page.dart';

class User {
  final String name, phone, email;
  User(this.email, this.phone, this.name);

  static List<User> userlist = [];
  void addUser(User user) {
    setState() async => userlist.add(user);
  }
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  State<App> createState() => _App();
}

@override
class _App extends State<App> {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("listview"),
          ),
          floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () async {
                await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignPage()));
                setState(() {});
              }),
          body: Container(
            child: ListView.builder(
              itemCount: User.userlist.length,
              itemBuilder: ((context, index) {
                return Card(
                  margin: EdgeInsets.all(4),
                  elevation: 6,
                  child: ListTile(
                    title: Text(User.userlist[index].name,
                        style: const TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey)),
                    subtitle: Text(User.userlist[index].email,
                        style: const TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey)),
                    trailing: Text(User.userlist[index].phone,
                        style: const TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey)),
                  ),
                );
              }),
            ),
          ),
        ));
  }
}
