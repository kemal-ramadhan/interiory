import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

// import style
import 'package:interiory/style/style.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Selamat Datang,",
                     style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 24),
                     ),
                  SizedBox(height: 10,),
                  Text(
                    "Cari sesuatu untuk disimpan di rumah",
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                    ),
                    InputSearch(),
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/ads1.png'))
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/sample.png'))
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("Hot Deals", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[700], fontSize: 22),),
                    Container(
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/ads2.png'))
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("Produk Baru", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[700], fontSize: 22),),
                    ImagePost(title: "Latte Sofa Dulax", harga: "45000000", image: "Produk.png"),
                    
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}