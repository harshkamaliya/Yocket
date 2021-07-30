import 'package:flutter/material.dart';

// class ItemLayout extends StatefulWidget {

//   @override
//   _ItemLayoutState createState() => _ItemLayoutState();
// }

// class _ItemLayoutState extends State<ItemLayout> {

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: <Widget>[
//           Row(
//             children: <Widget>[
//               Image.network(
//                   'https://static.javatpoint.com/tutorial/flutter/images/flutter-creating-android-platform-specific-code3.png',
//                   height: 400,
//                   width: 250),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

class ItemLayout extends StatelessWidget {
  int id;
  String title;
  String image;
  double rating;
  String foodName;
  int priceLevel;
  int time;
  const ItemLayout({
    Key? key,
    required this.id,
    required this.title,
    required this.image,
    required this.rating,
    required this.foodName,
    required this.priceLevel,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage('${list[index]['image']}'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text('${list[index]['name']}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text('${list[index]['food_name']}'),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text('${list[index]['price']}'),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text('${list[index]['time']}',
                      style: TextStyle(color: Colors.red)),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 50),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.lightGreen[800],
            ),
            alignment: Alignment.center,
            child: Text(
              '${list[index]['ratings']}',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
