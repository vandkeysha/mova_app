import 'package:flutter/material.dart';
import 'package:mova_movie_app/screens/create_account_screen.dart';
import 'package:mova_movie_app/screens/splash_screen.dart';
import 'package:mova_movie_app/widgets/custom_text_field.dart';
import 'package:mova_movie_app/widgets/social_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
                  // BACK BUTTON
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
              ),
               SizedBox(height: 10),

               // LOGO
               Image.asset(
                "assets/images/logo.png",
                width: 120,
                height: 120,
               ),

               SizedBox(height: 30),

            Text(
              "Login To Your Account",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
            ),

            //Email field
            SizedBox(height: 30),

            CustomTextField(
              hint: "Enter Your Email",
              icon: Icons.email_rounded,
            ),

            SizedBox(height: 20),

            CustomTextField(
              hint: "Enter Your Password",
              icon: Icons.lock,
              isPassword: true,
            ),

            SizedBox(height: 30),

        
                  // Remember me
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => setState(() => rememberMe = !rememberMe),
                          child: Icon(
                            rememberMe
                                ? Icons.check_box
                                : Icons.check_box_outline_blank,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Remember Me",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                SizedBox(height: 40),

                // BUTTON SIGN IN
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO:UNTUK LOGIN KEHALAMAN HOME
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                     SizedBox(height: 20),

                        Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SplashScreen()),
                                        );
                                      },
                                  child: Text(
                                    "Forgot The Password?",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      decoration: TextDecoration.underline, 
                                    ),
                                  ),
                                ),
                              ),
                                SizedBox(height: 30),
                            Row(
                            children:  [
                              Expanded(child: Divider(color: Colors.grey)),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  "or continue with",
                                  style: TextStyle(color: Colors.white54),
                                ),
                              ),
                              Expanded(child: Divider(color: Colors.grey)),
                            ],
                          ),
                        // social button
                        SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SocialButton(iconPath: "assets/icons/facebook.svg"),
                              SizedBox(width: 20),
                              SocialButton(iconPath: "assets/icons/google.svg"),
                              SizedBox(width: 20),
                              SocialButton(iconPath: "assets/icons/apple.svg")
                            ],
                          ),

                          SizedBox(height: 20),
                          //text register link
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an Account?",
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                              SizedBox(width: 5),

                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => CreateAccountScreen())
                                  );
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ) 
                            ],
                          ),
                          SizedBox(height: 20)
                         ],
                       ),
                      )
                    ),
                  ) ;   
                }
              }