import 'package:flutter/material.dart';
import 'package:rent_ez/ui/ui.screens/forgot_password_screen.dart';
import 'package:rent_ez/ui/ui.screens/home_screen.dart';
import 'package:rent_ez/ui/ui.screens/sign_up_screen.dart';
import 'package:rent_ez/ui/ui.widgets/background_body.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundBody(
        child:SafeArea(
          child:Padding(
            padding: const EdgeInsets.all(24.0),
            child:SingleChildScrollView(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const SizedBox(height: 80,),
                  Text('Get Started With',
                    style:Theme.of(context).textTheme.titleLarge,
                  ),

                  const SizedBox(height:50,),

                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                    ),
                  ),

                  const SizedBox(height: 30,),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                  ),

                  const SizedBox(height: 50,),
                  SizedBox(
                    width: double.infinity,
                    child:ElevatedButton(
                      onPressed: () {
                       Navigator.push(context,MaterialPageRoute(
                           builder:(context) => const HomeScreen()),
                       );
                      },
                      child:const Text('Continue',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),

                  const SizedBox(height: 50),

                  Center(child: TextButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder:(context) => const ForgotPassword(),
                        ),
                      );
                    },child:  Text('Forgate Password?',style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,

                  ),
                  ),
                  ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ), ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder:(context) => const SignUpScreen(),
                          ),
                          );
                        },
                        child:  Text('Sign Up',style: TextStyle(
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
