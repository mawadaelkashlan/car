import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(15),
      children: [
        SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.all(5),
          width:300,
          height: 200,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all( color: Color.fromRGBO(190, 190, 190, 1),width: 2),
            color: Color.fromRGBO(244, 244, 244, 1),
          ),
          child:
          Column(
            children: [
              Row(
                  children:[
                    Container(
                      // margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                      padding:EdgeInsets.fromLTRB(11,11,0,30),
                      margin: EdgeInsets.fromLTRB(30, 20, 0, 30),
                      width:70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child:
                      Row(
                          children:[
                            Icon(Icons.account_balance_wallet_rounded,color: Colors.grey,size: 50,),
                          ]
                      ),
                    ),SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("My Wallet",
                            style: TextStyle(fontSize: 17, color: Color.fromRGBO(190, 190, 190, 1),) ),
                        SizedBox(height: 5,),
                        Text("\$4000,000",
                            style: TextStyle(fontSize: 30, color: Colors.black,fontWeight: FontWeight.bold) ),
                      ],
                    ),
                  ]
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: Text("Top Up Balance"),
                    onPressed: () {},
                    //   Navigator.of(context).push(MaterialPageRoute(builder: (context){return second();}
                    //   ),);
                    // },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(3, 169, 244, 1),
                        padding: EdgeInsets.symmetric(horizontal: 90,vertical: 15),
                        textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
        SizedBox(height: 30,),
        Text("Recommend For You ",
            style: TextStyle(fontSize: 23, color: Colors.black,fontWeight: FontWeight.bold) ),
        SizedBox(height: 20,),
        Container(
          margin: EdgeInsets.all(5),
          width:300,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all( color: Color.fromRGBO(190, 190, 190, 1),width: 2),
            color: Color.fromRGBO(244, 244, 244, 1),
          ),
          child:
          Column(
            children: [
              Row(
                  children:[
                    Container( margin: const EdgeInsets.all(10),
                      // ClipRRect(borderRadius: BorderRadius.circular(18),
                      child:  Image.asset("img/Car.jpeg", width: 155,),
                    ),
                    // ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_pin,color: Color.fromRGBO(3, 169, 244, 1),size: 20,),
                            Text("Keive",
                                style: TextStyle(fontSize: 17, color: Colors.black) ),
                          ],
                        ),
                        Text("  24 Aug 2020",
                            style: TextStyle(fontSize: 17, color: Colors.grey) ),
                        SizedBox(height: 15,),
                        Text("Product Name \n and Version",
                            style: TextStyle(fontSize: 23, color: Colors.black,fontWeight: FontWeight.bold) ),
                      ],
                    )
                  ]
              ),
            ],
          ),
        ),
      ],
    );
  }
}
