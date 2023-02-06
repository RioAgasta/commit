import 'package:commit/widgets/inputField.dart';
import 'package:commit/widgets/symmetricalSpace.dart';
import 'package:flutter/material.dart';
import 'package:commit/views/home.dart';
import 'package:commit/views/register.dart';

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
                const InputField(
                  labelText: 'E-Mail Address',
                  icon: Icon(Icons.email),
                  obscureText: false,
                ),
                verticalSpaceMedium,
                const InputField(
                  labelText: 'Password',
                  icon: Icon(Icons.lock),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                verticalSpaceMedium,
                SizedBox(
                  width: screenWidth,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      _navigateToHome(context);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
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
