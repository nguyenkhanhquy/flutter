import 'dart:async'; // Để sử dụng Timer
import 'package:flutter/material.dart';
import 'login_page.dart'; // Import trang đăng nhập

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Sau 10 giây tự động chuyển đến trang LoginPage
    Timer(const Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Thành viên nhóm:",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Thông tin thành viên nhóm
            Text("Nguyễn Khánh Quy - 21110282"),
            Text("Đinh Trung Nguyên - 21110259"),
            Text("Nguyễn Duy Sơn - 21110290"),
            Text("Phạm Lê Thiên Phú - 21110274"),
          ],
        ),
      ),
    );
  }
}
