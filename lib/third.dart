import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/cupertino.dart';

class Third extends StatelessWidget {
  const Third({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      // Scaffold(backgroundColor: Colors.white,
      //   appBar: AppBar(
      //     shape: Border.all(color: Colors.white10, width: 4),
      //     backgroundColor: Colors.grey[200],
      //     elevation: 0,
      //     leading: const Icon(
      //       Icons.menu,
      //       color: Colors.black,
      //       size: 20,
      //     ),
      //     title: const Text("Favourites", style: TextStyle(
      //       color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'arial', fontStyle: FontStyle.italic, )),
      //   ),

          ListView(
                children: [
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: Image.asset(
                        "img/2.jpeg", width: 400, height: 500, fit: BoxFit.cover),
                  ),
                  const Text("There is No favourites yet", style: TextStyle(fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'arial',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                    textAlign: TextAlign.center,
                  ),   // Icon(Icons.shopping_cart),
                ],
         );
  }
}
