import 'package:flutter/material.dart';
import 'calculator.dart';
import 'bmi.dart';
import 'profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String _selectedPage = 'Dashboard'; // Default page is Dashboard

  void _navigateToPage(String page) {
    // Navigasi ke halaman yang dipilih berdasarkan nilai dropdown
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      if (page == 'Calculator') {
        return Calculator();
      } else if (page == 'BMI') {
        return Bmi();
      } else if (page == 'Profil') {
        return Profile();
      }
      return Dashboard(); // Halaman default
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Pilih Operasi!', style: TextStyle(fontSize: 40)),
            SizedBox(height: 20),
            DropdownButton<String>(
              value: _selectedPage,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedPage = newValue!;
                  _navigateToPage(_selectedPage);
                });
              },
              items: <String>['Dashboard', 'Calculator', 'BMI', 'Profil']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
