import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:rent_ez/ui/ui.screens/login_screen.dart';
import 'package:rent_ez/ui/ui.screens/reset_password_screen.dart';
import 'package:rent_ez/ui/ui.widgets/background_body.dart';



class PinVarification extends StatefulWidget {
  const PinVarification({super.key});

  @override
  State<PinVarification> createState() => _PinVarificationState();
}

class _PinVarificationState extends State<PinVarification> {
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

                  const SizedBox(height: 90,),

                  Text('PIN Verification',
                    style:Theme.of(context).textTheme.titleLarge,
                  ),

                  const SizedBox(height:20),

                  Text('A 6 digit verification pin will send to your email address',
                    style:TextStyle(
                      fontSize: 15,
                      color: Colors.black12,
                      fontWeight: FontWeight.bold,

                    ),
                  ),

                  const SizedBox(height:40,),

                  PinCodeTextField(
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 45,
                      activeFillColor: Colors.white,
                      activeColor: Colors.green,
                      selectedFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                    ),
                    animationDuration:const Duration(milliseconds: 300),
                    backgroundColor: Colors.blue.shade50,
                    enableActiveFill: true,
                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (value) {

                    },
                    beforeTextPaste: (text) {
                      return true;
                    },
                    appContext: context,
                  ),


                  const SizedBox(height: 30,),
                  SizedBox(
                    width: double.infinity,
                    child:ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder:(context) => const ResetPassword(),
                          ),
                        );

                      },
                      child:const Text('Verify'),
                    ),
                  ),

                  const SizedBox(height: 50),

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
                          Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder:(context) => const LoginScreen()), (route) => false);
                        },
                        child:  Text('Sign In',style: TextStyle(
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