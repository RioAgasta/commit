import 'package:commit/widgets/inputField.dart';
import 'package:commit/widgets/symmetricalSpace.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Material(
                elevation: 20,
                borderRadius: BorderRadius.circular(20),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpaceMedium,
                      const Text('Register'),
                      verticalSpaceSmall,
                      const InputField(
                        labelText: 'Username',
                        icon: Icon(Icons.person),
                        obscureText: false,
                      ),
                      verticalSpaceMedium,
                      const InputField(
                        labelText: 'Birthdate',
                        icon: Icon(Icons.cake),
                        obscureText: false,
                        keyboardType: TextInputType.datetime,
                      ),
                      verticalSpaceMedium,
                      const InputField(
                        labelText: 'E-Mail Address',
                        icon: Icon(Icons.email),
                        obscureText: false,
                      ),
                      verticalSpaceMedium,
                      const InputField(
                        labelText: 'Phone Number',
                        icon: Icon(Icons.phone),
                        obscureText: false,
                        keyboardType: TextInputType.number,
                      ),
                      verticalSpaceMedium,
                      const InputField(
                          labelText: 'Password',
                          icon: Icon(Icons.lock),
                          obscureText: true),
                      verticalSpaceMedium,
                      const InputField(
                          labelText: 'Confirm Password',
                          icon: Icon(Icons.lock),
                          obscureText: true),
                      verticalSpaceMedium,
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Register'),
                      ),
                      verticalSpaceMedium,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
