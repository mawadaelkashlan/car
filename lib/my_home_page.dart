// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/second.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.deepPurple,
          body: Center(
                child: ListView(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      width: 380,
                      child: Image.asset('img/1.png' ),
                    ),

                    Container(
                      padding: EdgeInsetsDirectional.only(
                        start: 15
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Post Your Adds",
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.white ,
                                fontWeight: FontWeight.bold,)),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: 'Arial',
                            ),
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Container(
                              width: 300,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const First()));
                                },
                                child: Text("Get Started",
                                    style: TextStyle(fontSize: 20, color: Colors.white)),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

        );
  }
}
