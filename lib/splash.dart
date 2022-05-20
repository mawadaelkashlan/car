import 'package:flutter/material.dart';
import 'package:flutter_project/my_home_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed( Duration( milliseconds: 2000 ),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  const GetStarted()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children :
            [
              IconButton(onPressed: (){},
                icon: Icon(Icons.search) , iconSize: 40, color: Colors.white,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('welcome to' , style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),
                  Text(
                    'SOBAAR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500 ,),
                  ),
                ],
              )
            ]
            )
      )

    );
  }
}