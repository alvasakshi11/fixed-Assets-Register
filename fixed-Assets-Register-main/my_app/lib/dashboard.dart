import 'package:flutter/material.dart';
import 'package:my_app/New.dart';
import 'package:my_app/Tracker.dart';

class FixedAssetsDashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fixed Assets Register'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to New Mode screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FixedAssetsRegisterForm()),
                      );
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.add_circle_outline,
                              size: 96,
                              color: Colors.blue,
                            ),
                            SizedBox(height: 16),
                            Text(
                              'New Mode',
                              style: TextStyle(fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to Tracker Mode screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FixedAssetsTrackerScreen(
                                fixedassetno: '',
                                company: '',
                                category: '',
                                year: '',
                                productname: '',
                                type: '',
                                purchasedate: '',
                                modelnumber: '')),
                      );
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.track_changes,
                              size: 96,
                              color: Colors.green,
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Tracker Mode',
                              style: TextStyle(fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
