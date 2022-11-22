import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:interiory/style/style.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50,),
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/1 (23).png'))
              ),
            ),
            Text("Kemal Ramadhan", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.grey[700]), textAlign: TextAlign.center,),
            SizedBox(height: 15,),
            Text("20552011125", style: TextStyle(fontSize: 14), textAlign: TextAlign.center,),
            SizedBox(height: 25,),
            BoxInfo(title: "Kelas", content: "Sekolah Tinggi Teknologi Bandung | TIFRP20 A"),
            // SizedBox(height: 10,),
            BoxInfo(title: "Mata Kuliah", content: "Pemrograman Mobile 2 | Bu Nova"),
            // SizedBox(height: 10,),
            BoxInfo(title: "Kontak", content: "WhatsApp : +62 8986004677 | Instagram : @kemal.RMD"),
          ],
        ),
      )
    );
  }
}