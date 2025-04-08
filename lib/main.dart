import 'package:admin_dashboard/admin_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AdminPannel());
}

class AdminPannel extends StatelessWidget {
  const AdminPannel({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AdminScreen(),
    );
  }
}
