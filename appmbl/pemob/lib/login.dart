// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pemob/home.dart';
import 'constans.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.white,
      appBar:  AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed:() {
        Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios,
        size: 20,
        color: Colors.black,),
    ),
    ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LOGIN", 
            style: textTextStyle.copyWith(
              fontSize: 30, 
              fontWeight: bold
              ),
            ),
            const SizedBox(
              height: 11
              ),
            Text(
              "Hai Kawan silahkan login untuk melanjutkan!", 
              style: secondaryTextStyle.copyWith(
                fontSize: 12),
              textAlign:  TextAlign.center,
              ),
            const SizedBox(
              height: 64,
              ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Email", 
                style: textTextStyle.copyWith(
                  fontSize: 12, 
                  fontWeight: bold
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "sanjayaraga25@gmail.com",
                      hintStyle: textTextStyle.copyWith(fontSize: 12, color: textColor.withOpacity(0.6)),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 17)
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                 Text(
                  "Password", 
                style: textTextStyle.copyWith(
                  fontSize: 12, 
                  fontWeight: bold
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                      suffixIcon: Icon(Icons.visibility_off)
                    ),
                  ),
                ),
                
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Tidak Memiliki Akun? "),
                Text("Buat Akun! ", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),)
              ],
            ),
            // SizedBox(height: 20,),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            // Row(
            //   children: [
            //     Container(
            //       width: 24,
            //       height: 24,
            //       decoration: BoxDecoration(
            //         color: buttonColor,
            //         borderRadius: BorderRadius.circular(5),
            //       ),
            //     ),
            //     SizedBox(width: 15,),
            //     Text("Remember me", style: greyTextStyle.copyWith(fontSize: 12),)
            //   ],
            // ),
            // Text("Forgot Password?", style: textTextStyle.copyWith(fontSize: 12),)
            //   ],
            // ),
            const SizedBox(
              height: 32,
            ),
             Container(
            width: double.infinity,
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryButtonColor,
              ),
              onPressed: () {
                // Navigate to the home page when the login button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()), // Replace HomePage with your home page widget
                );
              },
              child: Text("Login", style: whiteTextStyle.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    ),
    ),
  );
  }
}