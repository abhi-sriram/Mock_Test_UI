import 'package:all_india_mocktest/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class RegistePage extends StatefulWidget {
  static const routeName = '/signin/signup/register';

  @override
  _RegistePageState createState() => _RegistePageState();
}

class _RegistePageState extends State<RegistePage> {
  final _formKey = GlobalKey<FormState>();

  AppBar appBar = AppBar(
    title: Text(
      'Register',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    centerTitle: true,
  );

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: appBar,
      body: Container(
        height: media.height -
            MediaQuery.of(context).padding.top -
            appBar.preferredSize.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome user',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'You are one step away',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 18,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Date of birth',
                          prefixIcon: Icon(
                            Icons.date_range,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Category',
                          prefixIcon: Icon(
                            Icons.category,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'City',
                          prefixIcon: Icon(Icons.location_city),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'State',
                          prefixIcon: Icon(
                            Icons.location_city,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Phone number',
                          prefixIcon: Icon(
                            Icons.phone,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, HomePage.routeName);
                        },
                        child: Text('Register'),
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all<Size>(
                            Size.fromWidth(100),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
