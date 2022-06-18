import 'package:flutter/material.dart';
import 'package:login_ui/homepage.dart';
import 'package:login_ui/widgets/custom_button.dart';
import 'package:login_ui/widgets/custom_textfield.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  bool checkBoxValue = false;
  bool showPassword = true;
  bool showConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text(
                      'Hey there,',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Center(
                    child: Text(
                      'Create an Account',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                 const  CustomTextFeild(
                    hint: 'First Name',
                    iconData: Icons.person_outline,
                  ),
                
                  const SizedBox(
                    height: 20,
                  ),
                  const  CustomTextFeild(
                    hint: 'Last Name',
                    iconData: Icons.person_outline,
                  ),
                
                  const SizedBox(
                    height: 20,
                  ),
                  const  CustomTextFeild(
                    hint: 'Email',
                    iconData: Icons.email_outlined,
                  ),
                
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFeild(
                    iconData: Icons.lock_outlined,
                    hint: 'Password',
                    isObscureText: showPassword,
                    onTap: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFeild(
                    iconData: Icons.lock_outlined,
                    hint: 'Confirm Password',
                    isObscureText: showConfirmPassword,
                    onTap: () {
                      setState(() {
                        showConfirmPassword = !showConfirmPassword;
                      });
                    },
                  ),
                 
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: checkBoxValue,
                          onChanged: (newValue) {
                            setState(() {
                              checkBoxValue = newValue!;
                            });
                          }),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: const Text(
                              'By creating an account, you agree to our Contiditions of Use and Privacy Notice')),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomButton(label: 'Register', onTap: (){}),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account? "),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()));
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.purple.shade200),
                          )),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    ));
  }
}
