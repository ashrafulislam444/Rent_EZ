import 'package:flutter/material.dart';
import 'package:rent_ez/ui/ui.screens/login_screen.dart';
import 'package:rent_ez/ui/ui.widgets/background_body.dart';
class SignUpScreen extends StatefulWidget{
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundBody(
        child:SafeArea(
          child:Padding(
            padding: const EdgeInsets.all(25.0),
            child:SingleChildScrollView(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const SizedBox(height: 10,),
                  Text('Create a new account',
                    style:TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),


                  const SizedBox(height:25,),

                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                    ),
                  ),

                  const SizedBox(height: 20,),

                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'First Name',
                    ),
                  ),

                  const SizedBox(height: 20,),

                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                    ),
                  ),

                  const SizedBox(height: 20,),

                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Phone',
                    ),
                  ),

                  const SizedBox(height: 20,),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'New Password',
                    ),
                  ),

                  const SizedBox(height: 20,),


                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                    ),
                  ),

                  const SizedBox(height: 20,),
                  SizedBox(
                    width: double.infinity,
                    child:ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder:(context) => const LoginScreen()), (route) => false);
                      },
                      child:const Text('Register',style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight:FontWeight.bold,
                      ),),
                    ),
                  ),

                  const SizedBox(height:25),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ), ),
                      TextButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },child: Text('Sign In',style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,

                      ),
                      ),
                      ),
                    ],
                  )
                ],
              ),

            ),

          ),
        ),
      ),

    );
  }
}
