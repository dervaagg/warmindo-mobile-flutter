import 'package:flutter/material.dart';
import 'package:warmindo_pbp/pages/login.page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Logout")));
  }
}
