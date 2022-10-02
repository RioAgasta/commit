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
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
  }

  void _navigateToRegister(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Register()));
  }

  void _navigateToBasement(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Basement()));
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
                Text(
                  'SMKN 2 Bandung',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                verticalSpaceMedium,
                Image.asset('assets/images/smk2.png', width: 175, height: 175,),
                verticalSpaceMedium,
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'E-Mail Address',
                    icon: Icon(Icons.email),
                  ),
                ),
                verticalSpaceMedium,
                const TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Phone',
                    icon: Icon(Icons.phone),
                    border: InputBorder.none,
                  ),
                ),
                verticalSpaceMedium,
                const TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    icon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
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
                    child: Text(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        _navigateToRegister(context);
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        _navigateToBasement(context);
                      },
                      child: Text(
                        'Basement',
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
