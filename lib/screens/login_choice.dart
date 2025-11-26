import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginChoiceScreen extends StatelessWidget {
  const LoginChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F0F12),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 10),

              // untuk back button
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.arrow_back_ios, color: Colors.white),
              ),

              SizedBox(height: 10),

              // ilustrasi untuk image nya
              Center(
                child: Image.asset(
                  "assets/images/login.png",
                  height: 300,
                  width: 290,
                ),
              ),

              SizedBox(height: 5),

              Center(
                child: Text(
                  "Let's you in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 40),

              // facebook button
              _socialButton(
                svgPath: "assets/icons/facebook.svg",
                text: "Continue with Facebook",
                color: Color(0xFF3b5998),
              ),

              SizedBox(height: 15),

              // google button
              _socialButton(
                svgPath: "assets/icons/google.svg",
                text: "Continue with Google",
                color: Colors.white,
                textColor: Colors.black,
                borderColor: Colors.white24,
              ),

              SizedBox(height: 15),

              // Apple button nya
              _socialButton(
                svgPath: "assets/icons/apple.svg",
                text: "Continue with Apple",
                color: Colors.white12,
                textColor: Colors.white,
                borderColor: Colors.white24,
              ),

              SizedBox(height: 15),

              // untuk divider nya atau garis putih putih nya
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.white24)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "or",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.white24)),
                ],
              ),

              SizedBox(height: 25),

              // password untuk login button
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      "Sign in with password",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 25),

              // sign up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account? ",
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

      // social button (icon svg)
          Widget _socialButton({
            IconData? icon,
            String? svgPath,
            required String text,
            Color color = Colors.white12,
            Color? textColor,
            Color? borderColor,
          }) {
            return Container(
              height: 55,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: borderColor ?? Colors.transparent),
              ),
              child: Row(
                children: [

                  SizedBox(width: 70), // space kiri

                  // ICON
                  SizedBox(
                    height: 26,
                    width: 26,
                    child: (svgPath != null)
                        ? Center(
                            child: SvgPicture.asset(
                              svgPath,
                              height: 22,
                            ),
                          )
                        : Center(
                            child: Icon(
                              icon,
                              color: textColor ?? Colors.white,
                              size: 26,
                            ),
                          ),
                      ),

                  Spacer(), // dorong teks ke tengah

                  Text(
                    text,
                    style: TextStyle(
                      color: textColor ?? Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Spacer(), // biar seimbang kanan-kiri

                  SizedBox(width: 10), // space kanan
                ],
              ),
            );
          }


}
