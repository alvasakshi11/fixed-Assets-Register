// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:my_app/dashboard.dart';
// import 'package:my_app/login .dart';


// class MyNewAssests extends StatefulWidget {
//   const MyNewAssests();

//   @override
//   State<MyNewAssests> createState() => _MyCreateAccState();
// }

// class _MyCreateAccState extends State<MyNewAssests> {
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
// //         body: Stack(
// //           children: [
// //             Container(
// //               padding: EdgeInsets.only(left: 22, top: 10),
// //               child: Text(
// //                 'Create\nAccount',
// //                 style: TextStyle(color: Colors.white, fontSize: 33),
// //               ),
// //             ),
// //             SingleChildScrollView(
// //               child: Container(
// //                 padding: EdgeInsets.only(
// //                     top: MediaQuery.of(context).size.height * 0.28,
// //                     right: 35,
// //                     left: 35),
// //                 child: Column(
// //                   children: [
// //                     TextField(
// //                       decoration: InputDecoration(
// //                         focusedBorder: OutlineInputBorder(
// //                           borderRadius: BorderRadius.circular(10),
// //                           borderSide: BorderSide(
// //                             color: Colors.black)),
// //                              enabledBorder: OutlineInputBorder(
// //                           borderRadius: BorderRadius.circular(10),
// //                           borderSide: BorderSide(
// //                             color: Colors.black)),
// //                           hintText: 'Name',
// //                           hintStyle: TextStyle(
// //                             color: Colors.white),
// //                           border: OutlineInputBorder(
// //                               borderRadius: BorderRadius.circular(10))),
// //                     ),
// //                     SizedBox(
// //                       height: 30,
// //                     ),
// //                     TextField(
// //                       decoration: InputDecoration(
// //                         focusedBorder: OutlineInputBorder(
// //                           borderRadius: BorderRadius.circular(10),
// //                           borderSide: BorderSide(
// //                             color: Colors.black)),
// //                              enabledBorder: OutlineInputBorder(
// //                           borderRadius: BorderRadius.circular(10),
// //                           borderSide: BorderSide(
// //                             color: Colors.black)),
// //                           hintText: 'Email',
// //                           hintStyle: TextStyle(
// //                             color: Colors.white),
// //                           border: OutlineInputBorder(
// //                               borderRadius: BorderRadius.circular(10))),
// //                     ),
// //                     SizedBox(
// //                       height: 30,
// //                     ),
// //                     TextField(
// //                       obscureText: true,
// //                       decoration: InputDecoration(
// //                         focusedBorder: OutlineInputBorder(
// //                           borderRadius: BorderRadius.circular(10),
// //                           borderSide: BorderSide(
// //                             color: Colors.black)),
// //                              enabledBorder: OutlineInputBorder(
// //                           borderRadius: BorderRadius.circular(10),
// //                           borderSide: BorderSide(
// //                             color: Colors.black)),
// //                           hintText: 'New password',
// //                           hintStyle: TextStyle(
// //                             color: Colors.white),
// //                           border: OutlineInputBorder(
// //                               borderRadius: BorderRadius.circular(10))),
// //                     ),
// //                     SizedBox(
// //                       height: 40,
// //                     ),
// //                     Row(
// //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                       children: [
// //                         Text(
// //                           'Sign In',
// //                           style: TextStyle(
// //                             color: Colors.white,
// //                               fontSize: 27, fontWeight: FontWeight.w700),
// //                         ),
// //                         CircleAvatar(
// //                           radius: 30,
// //                           backgroundColor: Color(0xff4c505b),
// //                           child: IconButton(
// //                             color: Colors.white,
// //                             onPressed: () {},
// //                             icon: Icon(Icons.arrow_forward),
// //                           ),
// //                         )
// //                       ],
// //                     ),
// //                     SizedBox(
// //                       height: 40,
// //                     ),
// //                     Row(
// //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                       children: [
// //                         TextButton(
// //                             onPressed: () { 
// //                               Navigator.push(
// //                                 context,
// //                                 MaterialPageRoute(
// //                                   builder: (context) => FixedAssetsDashboardScreen(),
// //                                 ),
// //                               ); 
// //                             },
// //                             child: Text(
// //                               'Submit',
// //                               style: TextStyle(
// //                                 decoration: TextDecoration.underline,
// //                                 fontSize: 18,
// //                                 color: Colors.black,
// //                               ),
// //                             )),
                            
// //                       ],
// //                     )
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
//       ),
//     );
  
//    }
// }




import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class FixedAssetsRegisterForm extends StatefulWidget {
  @override
  _FixedAssetsRegisterFormState createState() => _FixedAssetsRegisterFormState();
}

class _FixedAssetsRegisterFormState extends State<FixedAssetsRegisterForm> {
  // Define dropdown menu options for Company Name, Category, and Year
  List<String> _companyNames = ['Company A', 'Company B', 'Company C'];
  List<String> _categories = ['Category 1', 'Category 2', 'Category 3'];
  List<String> _years = ['2021', '2022', '2023'];

  // Define variables for product details form
  final _productNameController = TextEditingController();
  final _typeController = TextEditingController();
  final _purchaseDateController = TextEditingController();
  final _modelNumberController = TextEditingController();

  // Define variable to hold selected dropdown values
  late String _selectedCompanyName;
  late String _selectedCategory;
  late String _selectedYear;

  // Define variable to hold generated QR code
  late String _qrCodeData;

  // Function to generate QR code
  void _generateQRCode() {
    // Combine form data into a string to use as QR code data
    String data = 'Fixed Assets Number: ${DateTime.now().millisecondsSinceEpoch}\n'
        'Company Name: $_selectedCompanyName\n'
        'Category: $_selectedCategory\n'
        'Year: $_selectedYear\n'
        'Product Name: ${_productNameController.text}\n'
        'Type: ${_typeController.text}\n'
        'Purchase Date: ${_purchaseDateController.text}\n'
        'Model Number: ${_modelNumberController.text}';

    setState(() {
      _qrCodeData = data;
    });
  }

  @override
  void dispose() {
    // Clean up text controllers when widget is disposed
    _productNameController.dispose();
    _typeController.dispose();
    _purchaseDateController.dispose();
    _modelNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fixed Assets Register Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Fixed Assets Number: ${DateTime.now().millisecondsSinceEpoch}',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              DropdownButtonFormField(
                items: _companyNames.map((companyName) {
                  return DropdownMenuItem(
                    value: companyName,
                    child: Text(companyName),
                  );
                }).toList(),
                hint: Text('Select Company Name'),
                value: _selectedCompanyName,
                onChanged: (value) {
                  setState(() {
                    _selectedCompanyName = value!;
                  });
                },
              ),
              SizedBox(height: 16.0),
              DropdownButtonFormField(
                items: _categories.map((category) {
                  return DropdownMenuItem(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),
                hint: Text('Select Category'),
                value: _selectedCategory,
                onChanged: (value) {
                  setState(() {
                    _selectedCategory = value!;
                  });
                },
              ),
              SizedBox(height: 16.0),
              DropdownButtonFormField(
                items: _years.map((year) {
                  return DropdownMenuItem(
                    value: year,
                    child: Text(year),
                  );
                }).toList(),
                hint: Text('Select year'),
                value: _selectedCategory,
                onChanged: (value) {
                  setState(() {
                    _selectedCategory = value!;
                  });
                },
              ),


          ]))));}
  }
