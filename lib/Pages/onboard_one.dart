import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:interiory/Pages/onboarding_secound.dart';

class OnBoardOne extends StatelessWidget {
  const OnBoardOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/decoration1.png'),
                      alignment: Alignment.topRight)),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/build.png'),
                      alignment: Alignment.center)),
            ),
            Text(
              "Bangun Rumah\nSeperti Istana Impianmu!",
              style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
              textAlign: TextAlign.center,
            ),
            Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    // padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardSecound()));
                      },
                      color: Color.fromARGB(255, 34, 45, 51),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Selanjutnya",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white, ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
          ],
        ),
      )),
    );
  }
}
