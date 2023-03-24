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
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:flutter/material.dart';
import 'package:my_app/printing.dart';
import 'package:printing/printing.dart';
// import 'package:my_app/login.dart';
import 'package:image/image.dart' as img;
import 'package:qr_flutter/qr_flutter.dart';

import 'Tracker.dart';
import 'login .dart';
// import 'package:printing .dart';

class FixedAssetsRegisterForm extends StatefulWidget {
  @override
  _FixedAssetsRegisterFormState createState() =>
      _FixedAssetsRegisterFormState();
}

class _FixedAssetsRegisterFormState extends State<FixedAssetsRegisterForm> {
  // Define dropdown menu options for Company Name, Category, and Year
  List<String> _companyNames = ['Kakunje', 'Infosys', 'TCS'];
  List<String> _categories = ['Office Use', 'Personal Use', 'Lobby Use'];
  List<String> _years = ['2021', '2022', '2023'];

  // Define variables for product details form
  final _productNameController = TextEditingController();
  final _typeController = TextEditingController();
  final _purchaseDateController = TextEditingController();
  final _modelNumberController = TextEditingController();

  // Define variable to hold selected dropdown values
  //----------------------------------always intialize the variables before using-----------------------
  late String _selectedCompanyName = "";
  late String _selectedCategory = "";
  late String _selectedYear = "";

  // Define variable to hold generated QR code
  late String _qrCodeData = "";

  // Function to generate QR code
  void _generateQRCode() {
    // Combine form data into a string to use as QR code data
    String data =
        'Fixed Assets Number: ${DateTime.now().millisecondsSinceEpoch}\n'
        'Company Name: $_selectedCompanyName\n'
        'Category: $_selectedCategory\n'
        'Year: $_selectedYear\n'
        'Product Name: ${_productNameController.text}\n'
        'Type: ${_typeController.text}\n'
        'Purchase Date: ${_purchaseDateController.text}\n'
        'Model Number: ${_modelNumberController.text}';

    setState(() {
      // _qrCodeData = '${_selectedCompanyName},${_selectedCategory},${_selectedYear}';
    });
  }
  Future<void> _saveAsPdf() async {
    final pdf = pw.Document();
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/qrcode.pdf');

    final image = img.decodeImage(File('${dir.path}/qrcode.png').readAsBytesSync());

    final imagePdf = pw.MemoryImage(image!.data.buffer.asUint8List());

    pdf.addPage(pw.Page(
      build: (pw.Context context) {
        return pw.Center(child: pw.Image(imagePdf));
      },
    ));

    await file.writeAsBytes(await pdf.save());
  }

  Future<void> _printQrCode() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/qrcode.png');

    try {
      await Printing.layoutPdf(onLayout: (_) => file.readAsBytes());
    } catch (e) {
      print('Printing error: $e');
    }
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
              const SizedBox(height: 16.0),
              DropdownButtonFormField(
                items: _companyNames.map((companyName) {
                  return DropdownMenuItem(
                    value: companyName,
                    child: Text(companyName),
                  );
                }).toList(),
                hint: Text('Select Company Name'),
                // value: _selectedCompanyName,
                onChanged: (value) {
                  setState(() {
                    _selectedCompanyName = value!;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              DropdownButtonFormField(
                items: _categories.map((category) {
                  return DropdownMenuItem(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),
                hint: Text('Select Category'),
                // value: _selectedCategory,
                onChanged: (value) {
                  setState(() {
                    _selectedCategory = value!;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              DropdownButtonFormField(
                items: _years.map((year) {
                  return DropdownMenuItem(
                    value: year,
                    child: Text(year),
                  );
                }).toList(),
                hint: Text('Select year'),
                // value: _selectedCategory,
                onChanged: (value) {
                  setState(() {
                    _selectedYear = value!;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _productNameController,
                decoration: const InputDecoration(
                  hintText: 'Enter Product Name',
                  labelText: 'Product Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _typeController,
                decoration: const InputDecoration(
                  hintText: 'Enter Type',
                  labelText: 'Type',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter valid phone number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _purchaseDateController,
                decoration: const InputDecoration(
                  hintText: 'Enter Purchase Date',
                  labelText: 'Purchase Date',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter valid date';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _modelNumberController,
                decoration: const InputDecoration(
                  hintText: 'Enter Model Number',
                  labelText: 'Model Number',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter valid date';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              Center(
                child: Container(
                    padding: const EdgeInsets.only(top: 20),
                    width: double.infinity,
                    child: ElevatedButton(
                      child: const Text('Generate QRcode'),
                      onPressed: () {
                        setState(() {
                          _qrCodeData =
                              '${DateTime.now().millisecondsSinceEpoch},${_selectedCompanyName},${_selectedCategory},${_selectedYear},'
                              '${_productNameController.text},${_typeController.text}'
                              ',${_purchaseDateController.text},${_modelNumberController.text}';
                        });
                      },
                    )),
              ),
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  margin: const EdgeInsets.only(top: 30),
                  child: QrImage(
                    data: _qrCodeData,
                    version: QrVersions.auto,
                    size: 200,
                    gapless: false,
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(top: 20),
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Print QR code'),
                    onPressed: () {
                      // setState(() {
                      //   _qrCodeData = '${DateTime.now().millisecondsSinceEpoch},${_selectedCompanyName},${_selectedCategory},${_selectedYear},'
                      //       '${_productNameController.text},${_typeController.text}'
                      //       ',${_purchaseDateController.text},${_modelNumberController.text}';
                      // }
                      // );
                      // Navigator.pushReplacement(context,
                      //  MaterialPageRoute(builder: (context)=>printScreen()),
                      //  );
                      // Navigator.pop(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => PrintScreen(data: 'barcode',)),
                      // );
                    },
                  )),
              // ElevatedButton(
              //   // onPressed: () {
              //   //   Navigator.pop(
              //   //     context,
              //   //     MaterialPageRoute(builder: (context) => printing()),
              //   //   );
              //   // },
              //   child: Text("Print QR code"),
              // )
            ],
          ),
        ),
      ),
    );
  }
//    Future<void> _printQRCode() async {
//     final doc = pw.Document();
//     final qrImage = QrImage(
//       data: _qrCodeData,
//       version: QrVersions.auto,
//       size: 200.0,
//     );
//     var ui;
//     final imageBytes =
//         await qrImage.toByteData(format: ui.ImageByteFormat.png);
//     final pngImage = pw.MemoryImage(imageBytes.buffer.asUint8List());

//     doc.addPage(pw.Page(
//         build: (pw.Context context) {
//           return pw.Center(
//             child: pw.Image(pngImage),
//           );
//         }));
//     await Printing.layoutPdf(
//         onLayout: (format) => doc.save(),
// );
// }
}
