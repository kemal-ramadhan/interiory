import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:interiory/style/style.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

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
          children: <Widget>[
            SizedBox(height: 20,),
            Text("Keranjang", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.grey[700]), textAlign: TextAlign.center,),
            SizedBox(height: 20,),
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
              child: Row(
                children: <Widget>[
                  Container(
                    height: 110,
                    // width: 100,
                    width: 120,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/produk.png'))
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Latte Sofa Double", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                      SizedBox(height: 10,),
                      Text("IDR 50000000", style: TextStyle(fontSize: 14),),
                      SizedBox(height: 10,),
                      Text("Jumlah : 2x", style: TextStyle(fontSize: 14),)
                      // makeInput(label: "Jumlah"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
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
              child: Row(
                children: <Widget>[
                  Container(
                    height: 110,
                    // width: 100,
                    width: 120,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/produk.png'))
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Latte Sofa Double", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                      SizedBox(height: 10,),
                      Text("IDR 50000000", style: TextStyle(fontSize: 14),),
                      SizedBox(height: 10,),
                      Text("Jumlah : 2x", style: TextStyle(fontSize: 14),)
                      // makeInput(label: "Jumlah"),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 25,),

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Total", style: TextStyle(fontSize: 14, color: Colors.grey[700]),),
                  SizedBox(height: 10,),
                  Text("IDR 1.000.000.00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.grey[700]),),
                  SizedBox(height: 10,),
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
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => BottomBar()));
                            },
                            color: Color.fromARGB(255, 34, 45, 51),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Text(
                              "Checkout",
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