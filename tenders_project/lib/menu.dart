// menu.dart

import 'package:flutter/material.dart';
import 'frigo.dart';
import "main.dart";
class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int calorieIntake = 0;
  List<List<bool>> checkboxValues = List.generate(2, (index) => List.generate(7, (index) => false));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calorie Intake and Checkboxes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Calorie intake for a meal:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  calorieIntake = int.tryParse(value) ?? 0;
                });
              },
            ),
            SizedBox(height: 16),
            Text(
              'Select options:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                SizedBox(width: 48),
                for (var day in ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'])
                  Container(
                    width: 40,
                    child: Center(child: Text(day)),
                  ),
              ],
            ),
            for (int i = 0; i < 2; i++)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 48,
                    child: Center(
                      child: Text(i == 0 ? 'Lunch' : 'Evening'),
                    ),
                  ),
                  for (int j = 0; j < 7; j++)
                    Checkbox(
                      value: checkboxValues[i][j],
                      onChanged: (value) {
                        setState(() {
                          checkboxValues[i][j] = value!;
                        });
                      },
                    ),
                ],
              ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/foodList',
                  arguments: {'checkboxValues': checkboxValues, 'calorieIntake': calorieIntake},
                );
              },
              style: ElevatedButton.styleFrom(
              // Use primary color directly
              ),
              child: Text(
                'Go to Food List',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
