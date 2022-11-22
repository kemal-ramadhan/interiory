import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../style/style.dart';

Widget ListProduk() {
  return Center(
    child: GridView.count(
          crossAxisCount: 1,
          primary: false,
          padding: EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: <Widget>[
            ImagePost(title: "Latte Sofa Double", harga: "50000000", image: "produk.png"),
            ImagePost(title: "Latte Sofa Double", harga: "50000000", image: "produk.png"),
            ImagePost(title: "Latte Sofa Double", harga: "50000000", image: "produk.png"),
          ],
          ),
  );
}