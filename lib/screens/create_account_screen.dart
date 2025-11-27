import 'package:flutter/material.dart';
import 'package:mova_movie_app/screens/login_screen.dart';
import 'package:mova_movie_app/screens/splash_screen.dart';
import 'package:mova_movie_app/widgets/custom_text_field.dart';
import 'package:mova_movie_app/widgets/social_button.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF0E0E0E),
      body: SafeArea(
        child: SingleChildScrollView(
          padding:  EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               SizedBox(height: 20),

              /// BACK BUTTON
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
                width: 110,
                height: 100,
              ),

              SizedBox(height: 20),

              Text(
                "Create Your Account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),

              SizedBox(height: 30),

              /// EMAIL FIELD
              CustomTextField(
                hint: "Your Email",
                icon: Icons.email_outlined,
              ),

              SizedBox(height: 19),

              /// PASSWORD FIELD
              CustomTextField(
                hint: "Your Password",
                icon: Icons.lock_outline,
                isPassword: true,
              ),

            SizedBox(height: 19),
              // Confirm Password
              CustomTextField(
                hint: "Confirm Your Password",
                icon: Icons.lock_outline,
                isPassword: true,
              ),

              SizedBox(height: 16),

              /// REMEMBER ME
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
                 SizedBox(width: 8),
                Text(
                  "Remember me",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
               ),
               SizedBox(height: 30),

              /// SIGN UP BUTTON
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context, 
                        MaterialPageRoute(builder: (context) => SplashScreen()) //GANTI JADI KE HOME SCREEN
                      );
                  },
                  child:  Text(
                    "Sign up",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
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

               SizedBox(height: 20),

              /// SOCIAL BUTTONS
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  SocialButton
                  (iconPath: "assets/icons/facebook.svg"),
                  SizedBox(width: 20),
                  SocialButton
                  (iconPath: "assets/icons/google.svg"),
                  SizedBox(width: 20),
                  SocialButton(iconPath: "assets/icons/apple.svg"),
                ],
              ),

               SizedBox(height: 30),

              /// BOTTOM LOGIN LINK
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(color: Colors.white70),
                      ),
                       SizedBox(width: 5),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()),
                          );
                        },
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
