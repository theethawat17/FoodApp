import 'package:flutter/material.dart';
import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';
import 'Page4.dart';
import 'Page5.dart';
import 'Page6.dart';
import 'Page7.dart';
import 'Page8.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'อาหารที่ชอบ',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute:'/',
      routes:{
       '/': (context) => const Page1(title: "อาหารและของว่าง"),
        '/page2': (context) => const Page2(title: "ข้าวมันไก่"),
        '/page3': (context) => const Page3(title: "ข้าวพัดกุ้ง"),
        '/page4': (context) => const Page4(title: "ไก่ทอด"),
        '/page5': (context) => const Page5(title: "ก๋วยเตี๋ยว"),
        '/page6': (context) => const Page6(title: "น้ำโกโก้"),
        '/page7': (context) => const Page7(title: "ชาเขียว"),
        '/page8': (context) => const Page8(title: "มะพร้าวนมสดปั่น"),
      },
    );
  }
}