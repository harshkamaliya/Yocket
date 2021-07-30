import 'package:flutter/material.dart';
import 'package:flutter_app/data/restaurant_data.dart';
import 'package:flutter_app/itemlayout.dart';
import 'package:flutter_app/restaurants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late bool _loading;
  var restaurantList;
  late List<Restaurants> restaurants;
  String query = '';
  int itemCount = 0;

  @override
  void initState() {
    _loading = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff84FFFF),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search for restaurants ...',
                  hintStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(),
                  filled: true,
                ),
                onChanged: (text) {
                  text = text.toLowerCase();
                  setState(() {});
                },
              ),
            ),
            Expanded(
              child: _loading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            ItemLayout(),
                            SizedBox(
                              height: 10,
                            ),
                            ItemLayout(),
                            SizedBox(
                              height: 10,
                            ),
                            ItemLayout(),
                            SizedBox(
                              height: 10,
                            ),
                            ItemLayout(),
                            SizedBox(
                              height: 10,
                            ),
                            ItemLayout(),
                            SizedBox(
                              height: 10,
                            ),
                            ItemLayout(),
                            SizedBox(
                              height: 10,
                            ),
                            ItemLayout(),
                          ],
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
