import 'package:bangun_datar_kelasc/page/Segitiga_page.dart';
import 'package:bangun_datar_kelasc/page/lingkaran_page.dart';
import 'package:bangun_datar_kelasc/page/persegi_page.dart';
import 'package:bangun_datar_kelasc/page/persegi_panjang_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(
              color: Color(
            0xff00ffe1,
          )),
        ),
        backgroundColor: Colors.green.shade300,
      ),
      body: Column(children: [
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage()));
                },
                child: CustomMenu(
                    title: "persegi", imageAsset: "assets/persegi.png"),
              ),
            ),
            Expanded(
            child: InkWell(
            onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPanjang()));
            },
              child: CustomMenu(
                  title: "persegi panjang",
                  imageAsset: "assets/persegi panjang.jpg"),
            ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
    child: InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> LingkaranPage()));
    },
              child: CustomMenu(
                  imageAsset: "assets/lingkaran.jpg", title: "Lingkaran"),
    ),
            ),
            Expanded(
            child: InkWell(
            onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> SegitigaPage()));
    },
              child: CustomMenu(
                  imageAsset: "assets/segitiga.png", title: "Segitiga"),
            )
            ),],
        ),
      ]),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        width: 100,
        decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Column(
          children: [
            Image.asset(
              imageAsset,
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
