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
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Username'),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      verticalSpaceMedium,
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Birthdate'),
                        ),
                        keyboardType: TextInputType.datetime,
                      ),
                      verticalSpaceMedium,
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('E-Mail Address'),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      verticalSpaceMedium,
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Phone Number'),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      verticalSpaceMedium,
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Password'),
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                      verticalSpaceMedium,
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Confirm Password'),
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                      verticalSpaceMedium,
                      ElevatedButton(
                        onPressed: (){},
                        child: const Text('Register'),
                      ),
                      verticalSpaceMedium,
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}
