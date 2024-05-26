import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import the services package for clipboard functionality
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'payment_page.dart';

class QRTab extends StatefulWidget {
  @override
  _QRTabState createState() => _QRTabState();
}

class _QRTabState extends State<QRTab> {
  final GlobalKey _qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? _controller;
  bool _isScanned = false;

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double frameSize = MediaQuery.of(context).size.width / 2;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 5,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: QRView(
                  key: _qrKey,
                  onQRViewCreated: _onQRViewCreated,
                  overlay: QrScannerOverlayShape(
                    borderColor: Colors.red,
                    borderRadius: 10,
                    borderLength: 30,
                    borderWidth: 10,
                    cutOutSize: frameSize,
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: frameSize,
                  height: frameSize,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      _controller = controller;
    });

    controller.scannedDataStream.listen((scanData) async {
      if (!_isScanned) {
        _isScanned = true;
        String qrCodeData = scanData.code ?? '';
        // Show the result in a dialog
        await _showDialog(context, qrCodeData);
        // Resume camera for continuous scanning
        _controller?.resumeCamera();
        // Reset _isScanned after handling scan
        setState(() {
          _isScanned = false;
        });
      }
    });
  }

  Future<void> _showDialog(BuildContext context, String qrCodeData) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Scanned QR Code'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(qrCodeData),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Copy'),
              onPressed: () {
                Clipboard.setData(ClipboardData(text: qrCodeData));
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('QR Code data copied to clipboard')),
                );
              },
            ),
            TextButton(
              child: Text('OK'),
              onPressed: () {
                 Navigator.of(context).pop(); 
              // Navigate to another page
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentPage()));
              }
            ),
          ],
        );
      },
    );
  }
}