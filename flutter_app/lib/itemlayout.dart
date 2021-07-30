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
  // int id;
  // String title;
  // String image;
  // double rating;
  // String foodName;
  // int priceLevel;
  // int time;
  // const ItemLayout({
  //   Key? key,
  //   required this.id,
  //   required this.title,
  //   required this.image,
  //   required this.rating,
  //   required this.foodName,
  //   required this.priceLevel,
  //   required this.time,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://img.freepik.com/free-photo/top-view-fast-food-mix-hamburger-doner-sandwich-chicken-nuggets-rice-vegetable-salad-chicken-sticks-caesar-salad-mushrooms-pizza-chicken-ragout-french-fries-mayo_141793-3997.jpg?size=626&ext=jpg'),
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
                  child: Text('Mayflower Park',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text('emma barrera'),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text('2000'),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text('10 pm', style: TextStyle(color: Colors.red)),
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
              '4.5',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
