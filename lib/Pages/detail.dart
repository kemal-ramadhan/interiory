import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:interiory/Pages/Bottom_bar.dart';
import 'package:interiory/Pages/cart.dart';
import 'package:interiory/Pages/produk.dart';
import 'package:interiory/style/style.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
          ),
        ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 15,),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.all(0),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/produk.png'), alignment: Alignment.topCenter)
              ),
            ),
            SizedBox(height: 15,),
            Text("Latte Soffa Double", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
            SizedBox(height: 10,),
            Text("IDR. 50000000", style: TextStyle(fontSize: 16),),
            SizedBox(height: 15,),
            Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.", style: TextStyle(fontSize: 12),),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 0,
                    blurRadius: 2.0,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  makeInput(label: "Jumlah"),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                        child: Container(
                          // padding: EdgeInsets.only(top: 3, left: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: MaterialButton(
                            minWidth: double.infinity,                            
                            height: 60,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => BottomBar()));
                            },
                            color: Color.fromARGB(255, 79, 203, 81),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Text(
                              "Pesan Sekarang",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white, ),
                            ),
                          ),
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}