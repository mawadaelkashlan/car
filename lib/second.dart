import 'package:flutter/material.dart';
import 'package:flutter_project/fourth.dart';
import 'package:flutter_project/home.dart';
import 'package:flutter_project/third.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);
  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  int currentIndex =0;
  List<Widget> screens =[
    Home(),
    Third(),
    Fourth(),
  ];
  List<String> titles = [
    'wallet',
    'Favourites',
    'product details',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(244, 244, 244, 1),
          foregroundColor: Colors.black,
          elevation: 0,
          title: Text( titles[currentIndex],
              style: TextStyle(fontSize: 17, color: Colors.black,fontWeight: FontWeight.bold) ),
          leading: Icon(Icons.menu),
          actions: [
            if(currentIndex == 0)
              Icon(Icons.bookmarks),
            SizedBox( width: 20,)
          ],
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey[200],
          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex=index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_sharp),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon:  Icon(Icons.star),
              label: "Fav",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.shopping_basket),
            //   label: "bag",
            // ),
            //
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.person_outline),
            //   label: "home",
            // ),
          ],
        ),
      //   NavigationBar(
      //   backgroundColor: Colors.grey[200],
      //   height: 55,
      //   selectedIndex: 0,
      //   destinations: [
      //     ElevatedButton(onPressed: (){}
      //     , child: const NavigationDestination(
      //       icon: Icon(Icons.home_sharp),
      //       label: "home",
      //     ),
      //       style: ElevatedButton.styleFrom(primary: Colors.grey[200], side:const BorderSide(width: 0 ,color: Colors.white70)),
      //     ),
      //     ElevatedButton(onPressed: (){}, child: const NavigationDestination(
      //       icon: Icon(Icons.star),
      //       label: "Fav",
      //     ),
      //       style: ElevatedButton.styleFrom(primary: Colors.grey[200],side:const BorderSide(width: 0 ,color: Colors.white70)),
      //     ),
      //     ElevatedButton(onPressed: (){}, child: const NavigationDestination(
      //       icon: Icon(Icons.shopping_basket),
      //       label: "bag",
      //     ),
      //       style: ElevatedButton.styleFrom(primary: Colors.grey[200],side:const BorderSide(width: 0 ,color: Colors.white70)),
      //     ),
      //     ElevatedButton(onPressed: (){}, child: const NavigationDestination(
      //       icon: Icon(Icons.shopping_cart),
      //       label: "Cart",
      //     ),
      //       style: ElevatedButton.styleFrom(primary: Colors.grey[200],side:const BorderSide(width: 0 ,color: Colors.white70)),
      //     ),
      //     ElevatedButton(onPressed: (){}, child: const NavigationDestination(
      //       icon: Icon(Icons.person_outline),
      //       label: "Me",
      //     ),
      //       style: ElevatedButton.styleFrom(primary: Colors.grey[200],side:const BorderSide(width: 0 ,color: Colors.white70)),
      //     ),
      //   ],
      // ),
      );
  }
}