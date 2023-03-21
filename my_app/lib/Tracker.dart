// import 'package:flutter/material.dart';
// import 'package:my_app/dashboard.dart';
// import 'package:my_app/login .dart';

// // class Tracker extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container (
// //       decoration:BoxDecoration(
// //         image: DecorationImage(image: AssetImage('assets/background.jpeg'), fit: BoxFit.cover)
// //       ),
// //       child: Scaffold(
// //       )
// //     );
// //   }
// // }
//       class Tracker extends StatefulWidget {
//   const Tracker();

//   @override
//   State<Tracker> createState() => _TrackerState();
// }

// class _TrackerState extends State<Tracker> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage('assets/images/register.png'), fit: BoxFit.cover)),
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color.fromARGB(0, 246, 241, 241),
//           elevation: 0,
//         ),
//         backgroundColor: Color.fromARGB(0, 238, 232, 232),
//         body: Stack(
//           children: [
//             Container(
//               padding: EdgeInsets.only(left: 22, top: 10),
//               child: Text(
//                 'Create\nAccount',
//                 style: TextStyle(color: Colors.white, fontSize: 33),
//               ),
//             ),
//             SingleChildScrollView(
//               child: Container(
//                 padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).size.height * 0.28,
//                     right: 35,
//                     left: 35),
//                 child: Column(
//                   children: [
//                     TextField(
//                       decoration: InputDecoration(
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Colors.black)),
//                              enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Colors.black)),
//                           hintText: 'Name',
//                           hintStyle: TextStyle(
//                             color: Colors.white),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10))),
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     TextField(
//                       decoration: InputDecoration(
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Colors.black)),
//                              enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Colors.black)),
//                           hintText: 'Email',
//                           hintStyle: TextStyle(
//                             color: Colors.white),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10))),
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     TextField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Colors.black)),
//                              enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: Colors.black)),
//                           hintText: 'New password',
//                           hintStyle: TextStyle(
//                             color: Colors.white),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10))),
//                     ),
//                     SizedBox(
//                       height: 40,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Sign In',
//                           style: TextStyle(
//                             color: Colors.white,
//                               fontSize: 27, fontWeight: FontWeight.w700),
//                         ),
//                         CircleAvatar(
//                           radius: 30,
//                           backgroundColor: Color(0xff4c505b),
//                           child: IconButton(
//                             color: Colors.white,
//                             onPressed: () {},
//                             icon: Icon(Icons.arrow_forward),
//                           ),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: 40,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         TextButton(
//                             onPressed: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => dashboard(),
//                                 ),
//                               );
//                             },
//                             child: Text(
//                               'Submit',
//                               style: TextStyle(
//                                 decoration: TextDecoration.underline,
//                                 fontSize: 18,
//                                 color: Colors.black,
//                               ),
//                             )),

//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );

//   }
// }
// import 'package:flutter/material.dart';

// class TrackerScreen extends StatefulWidget {
//   @override
//   _TrackerScreenState createState() => _TrackerScreenState();
// }

// class _TrackerScreenState extends State<TrackerScreen> {
//   String _searchText = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Tracker Mode'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             TextField(
//               decoration: InputDecoration(
//                 hintText: 'Search',
//                 border: OutlineInputBorder(),
//               ),
//               onChanged: (text) {
//                 setState(() {
//                   _searchText = text;
//                 });
//               },
//             ),
//             SizedBox(height: 16.0),
//             Text(
//               'Scan QR Code',
//               style: TextStyle(
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 16.0),
//             Expanded(
//               child: Center(
//                 child: _searchText.isEmpty
//                     ? Text('No search results')
//                     : Text('Search results for "$_searchText"'),
//               ),
//             ),
//             SizedBox(
//                height: 30,
//            ),
//             Row(
//               children: [
//                 TextButton(
//                             onPressed: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => AddAssetScreen(),
//                                 ),
//                               );
//                             },
//                             child: Text(
//                               'Back',
//                               style: TextStyle(
//                                 decoration: TextDecoration.underline,
//                                 fontSize: 18,
//                                 color: Colors.black,
//                               ),
//                             ))
//               ],
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () {
//           // TODO: Implement QR scanner functionality.
//         },
//         icon: Icon(Icons.camera_alt),
//         label: Text('Scan'),
//       ),

//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:my_app/ScanQrcode.dart';

import 'dashboard.dart';

class FixedAssetsTrackerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fixed Assets Tracker'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(),
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 250,
                    height: 250,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Qrcodescanner()),
                        );
                        // Open QR scanner
                      },
                      icon: Icon(Icons.camera_alt),
                      label: Text('Scan'),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Scan a QR code to track a fixed asset',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate back to previous screen
          Navigator.pop(
            context,
            MaterialPageRoute(
                builder: (context) => FixedAssetsDashboardScreen()),
          );
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
