import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Qrcodescanner extends StatefulWidget {
  @override
  QrcodescannerState createState() {
    return QrcodescannerState();
  }
}

// Create a corresponding State class, which holds data related to the form.
class QrcodescannerState extends State<Qrcodescanner> {
  final qrkey = GlobalKey(debugLabel: 'QR');
  QRViewController? qrViewController;
  Barcode? result;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      qrViewController!.pauseCamera();
    }
    qrViewController!.resumeCamera();
  }

  @override
  void dispose() {
    super.dispose();
    qrViewController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scan Qrcode")),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white24),
            child: Text(result != null ? '${result}' : 'scan qrcode'),
          ),
          QRView(
            key: qrkey,
            onQRViewCreated: onQrViewCreated,
            overlay: QrScannerOverlayShape(),
          ),
        ],
      ),
    );
  }

  void onQrViewCreated(QRViewController controller) {
    setState(() => qrViewController = controller);
    controller.scannedDataStream
        .listen((barcode) => setState(() => result = barcode));
  }
}
