import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:interiory/Pages/detail.dart';
import 'package:interiory/Pages/listproduk.dart';
import 'package:interiory/style/style.dart';

class Produk extends StatelessWidget {
  const Produk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: Center(
              child: GridView.count(
                    crossAxisCount: 1,
                    primary: false,
                    padding: EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                          // height: MediaQuery.of(context).size.height,
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/produk.png'))
                          ),
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const Detail()));
                            },
                            child: Text("Latte Sofa Double", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey[700]),),
                            ),
                          SizedBox(height: 10,),
                          Text("IDR 50000000", style: TextStyle(fontSize: 14, color: Colors.grey[700]),),
                          SizedBox(height: 10,),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                          // height: MediaQuery.of(context).size.height,
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/produk.png'))
                          ),
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const Detail()));
                            },
                            child: Text("Latte Sofa Double", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey[700]),),
                            ),
                          SizedBox(height: 10,),
                          Text("IDR 50000000", style: TextStyle(fontSize: 14, color: Colors.grey[700]),),
                          SizedBox(height: 10,),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                          // height: MediaQuery.of(context).size.height,
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/produk.png'))
                          ),
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const Detail()));
                            },
                            child: Text("Latte Sofa Double", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey[700]),),
                            ),
                          SizedBox(height: 10,),
                          Text("IDR 50000000", style: TextStyle(fontSize: 14, color: Colors.grey[700]),),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ],
                    ),
            ),
    );
  }
}