import 'package:commit/widgets/symmetricalSpace.dart';
import 'package:flutter/material.dart';
import 'package:commit/views/home.dart';
import 'package:commit/views/register.dart';
import 'basement.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  void _navigateToHome(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home()));
  }

  void _navigateToRegister(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Register()));
  }

  void _navigateToBasement(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Basement()));
  }

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 25,),
            child: Column(
              children: [
                verticalSpaceLarge,
                const Text(
                  'SMKN 2 Bandung',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                verticalSpaceMedium,
                Image.asset('assets/images/smk2.png', width: 175, height: 175,),
                verticalSpaceMedium,
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'E-Mail Address',
                    icon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                verticalSpaceMedium,
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    icon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                verticalSpaceMedium,
                Container(
                  width: screenWidth,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      _navigateToHome(context);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                verticalSpaceSmall,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: (){
                        _navigateToRegister(context);
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
