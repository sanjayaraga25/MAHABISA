import 'package:flutter/material.dart';
import 'package:pemob/signup.dart';
import 'login.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child:Container(
           width:  double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Column(
                children: <Widget>[
                  Text(
                    "MAHABISA",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Selamat Datang Kawan Mahasiswa! \n Silahkan Login atau Register untuk melanjutkan!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:  Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15, 
                    ),)
                ],
              ),  
              Container(
                height: MediaQuery.of(context).size.height/3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/welcome.png") 
                  )
                ),
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                    },
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignupPage()));
                    },
                    color: const Color(0xFF0095FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                      ),
                    ),
                  )
                ],
              )
              
            ],
          ),
          ),       
         ),
        );
      }
  }



