import 'package:flutter/material.dart';
import 'page/todolist.dart';
import 'page/dashboard.dart';
import 'page/bmi.dart';
import 'page/calculator.dart';
import 'page/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() =>  _HomeState();
}

class  _HomeState extends State <Home> {

  int currentTab = 0;
  final List<Widget> screens = [
    const Dashboard(),
    Bmi(),
    const Calculator(),
    const Profile()

  ];
  

  final PageStorageBucket bucket = PageStorageBucket();
  Widget curentScreen = const Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: PageStorage(
      bucket: bucket,
      child: curentScreen,
     ),
     floatingActionButton: FloatingActionButton(
      child: const Icon(Icons.book),
      onPressed: (){
                    setState(() {
                      curentScreen = TodoList();
                      currentTab = 0;
                    });
                  },
     ),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     bottomNavigationBar: BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      curentScreen = Dashboard();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: currentTab == 0 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(color: currentTab == 0 ? Colors.blue : Colors.grey),
                      )
                    ],
                  ),
                ),
                 MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      curentScreen = const Calculator();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.calculate,
                        color: currentTab == 1 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Calculate',
                        style: TextStyle(color: currentTab == 1 ? Colors.blue : Colors.grey),
                      )
                    ],
                  ),
                ),
               
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      curentScreen = Bmi();
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.confirmation_number_rounded,
                        color: currentTab == 2 ? Color.fromARGB(255, 42, 107, 235) : Colors.grey,
                      ),
                      Text(
                        'BMI',
                        style: TextStyle(color: currentTab == 2 ? Colors.blue : Colors.grey),
                      )
                    ],
                  ),
                ),
                 MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      curentScreen = const Profile();
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        color: currentTab == 3 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(color: currentTab == 3 ? Colors.blue : Colors.grey),

                      )
                    ],
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
}