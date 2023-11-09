import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget{
  const SignupPage({super.key});

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
    body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        height: MediaQuery.of(context).size.height - 50,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Create your account in here!",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700]
                    ),
                    )
              ],
            ),
            Column(
              children: <Widget>[
                inputFile(label: "Username"),
                inputFile(label: "Email"),
                inputFile(label: "Password", obscureText: true),
                inputFile(label: "Confirm-Password", obscureText: true),
              ],
            ),
             Container(
               padding: const EdgeInsets.only(top: 1, left: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: const Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )
             ),
             child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){},
                    color: const Color(0xFF0095FF),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(
                      "Register", style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),

                  ),
             )
          ],
        ),
        
      ),
    ),
    );
  }
}

Widget inputFile({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Colors.black87
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,
          horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey
            ),
            
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
          )
        ),
      ),
      const SizedBox()
    ],
  );
}