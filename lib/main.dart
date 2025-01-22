import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'addproduct.dart';
import 'showproductgrid.dart';
import 'showproducttype.dart';

//Method หลักทีRun
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCKUmwDKrfn5JjIDI2zwLzqoCH2skUGuhU",
            authDomain: "activity-c3ebd.firebaseapp.com",
            databaseURL: "https://activity-c3ebd-default-rtdb.firebaseio.com",
            projectId: "activity-c3ebd",
            storageBucket: "activity-c3ebd.firebasestorage.app",
            messagingSenderId: "45570064499",
            appId: "1:45570064499:web:ca839308142484c8526a06",
            measurementId: "G-8KSEWWQNCC"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

//Class stateless สั่งแสดงผลหนาจอ
class MyApp extends StatelessWidget {
  const MyApp({super.key});
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(221, 205, 19, 19)),
        useMaterial3: true,
      ),
      home: Main(),
    );
  }
}

//Class stateful เรียกใช้การทํางานแบบโต้ตอบ
class Main extends StatefulWidget {
  @override
  State<Main> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Main> {
//ส่วนเขียน Code ภาษา dart เพื่อรับค่าจากหน้าจอมาคํานวณหรือมาทําบางอย่างและส่งค่ากลับไป
//ส่วนการออกแบบหน้าจอ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'เมนูหลัก',
          style: TextStyle(
            color: Color.fromARGB(221, 255, 255, 255),
            fontSize: 23,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Color.fromARGB(221, 205, 19, 19),
      ),
      body: Stack(
        children: [
          // เพิ่มภาพพื้นหลัง
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/bg.jpg"), // พาธของภาพที่อยู่ในโฟลเดอร์ assets
                fit: BoxFit.cover, // ปรับขนาดภาพให้เต็มพื้นที่
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min, // จัดตำแหน่งให้อยู่ตรงกลางจอ
              children: [
                Image.asset(
                  'assets/logo.png', // โลโก้
                  width: 170,
                  height: 170,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // เมื่อกดปุ่มจะไปหน้าที่สอง
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            addproduct(), // ไปหน้าจอ AddProduct
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromARGB(255, 15, 159, 140), // กำหนดสีพื้นหลัง
                  ),
                  child: Text(
                    '    บันทึกสินค้า    ',
                    style: TextStyle(
                      color:
                          Color.fromARGB(221, 255, 255, 255), // กำหนดสีของฟอนต์
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // เมื่อกดปุ่มจะไปหน้าที่สอง
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            showproductgrid(), // ไปหน้าจอ AddProduct
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromARGB(255, 6, 65, 120), // กำหนดสีพื้นหลัง
                  ),
                  child: Text(
                    'เเสดงข้อมูลสินค้า',
                    style: TextStyle(
                      color:
                          Color.fromARGB(221, 255, 255, 255), // กำหนดสีของฟอนต์
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // เมื่อกดปุ่มจะไปหน้าที่สอง
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            showproducttype(), // ไปหน้าจอ AddProduct
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromARGB(255, 207, 169, 13), // กำหนดสีพื้นหลัง
                  ),
                  child: Text(
                    '    ประเภทสินค้า    ',
                    style: TextStyle(
                      color:
                          Color.fromARGB(221, 255, 255, 255), // กำหนดสีของฟอนต์
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
