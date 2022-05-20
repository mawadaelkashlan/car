import 'package:flutter/material.dart';

class Fourth extends StatelessWidget {
  const Fourth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      // Scaffold(
      //   backgroundColor: Colors.white,
      //   appBar: AppBar(
      //
      //     backgroundColor: Colors.white70,
      //     leading: Icon(Icons.menu , color: Colors.black,),
      //     title: Text('Product Details' , style: TextStyle(
      //       color: Colors.black,
      //     ),),
      //   ),
          ListView(
              children: [
                Container(
                    width: double.infinity,
                    child: Image.asset("img/Car.jpeg")
                ),
                SizedBox(height: 30,),
                Container(
                  padding: EdgeInsetsDirectional.only(
                    start: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Product Name and Version',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 7,),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                        , style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),),
                    ],
                  ),
                )
              ],
         );
  }
}