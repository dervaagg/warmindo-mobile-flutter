import 'package:flutter/material.dart';
import 'package:warmindo_pbp/pages/dashboard.page.dart';
import 'package:warmindo_pbp/utils/color.util.dart';
import 'package:warmindo_pbp/widgets/reusable.widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context)
            .size
            .width, // this will take width of the screen
        height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("6D6875"),
          hexStringToColor("B5838D"),
          hexStringToColor("E5989B")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/warmindo-pbp.png"),
                SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter Username", Icons.person_outline, false,
                    _emailTextController),
                SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                SizedBox(
                  height: 30,
                ),
                loginRegisterButton(context, true, () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DashboardPage()));
                })
                // registerOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

//   Row registerOption() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const Text("Belum Punya Akun?",
//             style: TextStyle(color: Colors.white70, fontSize: 15)),
//         GestureDetector(
//           onTap: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => RegisterPage()));
//           },
//           child: const Text(" Daftar yuk!",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold)),
//         )
//       ],
//     );
//   }
}
