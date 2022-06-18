import 'package:flutter/material.dart';
import 'package:login_ui/homepage.dart';

class forgot_pass extends StatefulWidget {
  const forgot_pass({ Key? key }) : super(key: key);

  @override
  State<forgot_pass> createState() => _forgot_passState();
} 

class _forgot_passState extends State<forgot_pass> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[850],
      body: SingleChildScrollView(
        child: Padding(
           padding:const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              Row(
                children: [
                  InkWell(
                    onTap:() {
                      Navigator.pop(context);
                    },
                    child:const Icon(Icons.arrow_back, color: Colors.white,)),
                  const SizedBox(width: 3,),
                  const Text('Back',
                  style:TextStyle(color: Colors.white, fontSize: 20))
                ],
              ),
              
              const SizedBox(height: 40,),
              const Text('Reset Password', 
              style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold) ,),
              const SizedBox(height: 4,),
              const Text("Forgot your password? That's okay, it happens to everyone!",
              style: TextStyle(color: Colors.white70, fontSize: 17),),
              const Text("Please provide your email to reset your password",
              style: TextStyle(color: Colors.white70, fontSize: 17),),

              const SizedBox(height: 35,),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.black,filled: true,
                  
                  prefixIcon:const Icon( Icons.email_outlined, color: Colors.white70,),
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none ),
                  hintText: 'Email', hintStyle:const TextStyle(color: Colors.white70),
                 ),
              ),
              const SizedBox(height: 30,),
              InkWell(
                onTap: () {
                  
                },
              child:Container(
                alignment: Alignment.center,
                // width: MediaQuery.of(context).size.width,
                height: 50,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:Colors.black,
                ),
                child:const Text('Send Instruction', style: TextStyle(color: Colors.white, fontSize: 20),)
              ),
              ), 
            ],
         ),
        ),
      ),
      ),
    );
  }
}