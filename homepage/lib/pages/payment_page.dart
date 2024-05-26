
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  TextEditingController _recipientController = TextEditingController();
  TextEditingController _amountController = TextEditingController();
  TextEditingController _dateController = TextEditingController();

  @override
  void dispose() {
    _recipientController.dispose();
    _amountController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make a Payment'),
      ),
      body: Container(
        color: customColor, // Background color
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/globe.jpg', // Image asset path
                  height: 100.0,
                  width: 100.0,
                ),
                SizedBox(height: 20.0),
                TextField(
                  controller: _recipientController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(11),
                    Custom11DigitFormatter(),
                  ],
                  decoration: InputDecoration(
                    labelText: 'Send Money to',
                    hintText: 'Recipient Number',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white, // Set the background color to white
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: InputDecoration(
                    labelText: 'Amount',
                    hintText: 'Enter Amount',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white, // Set the background color to white
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  controller: _dateController,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: 'Date',
                    hintText: 'Select Date',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white, // Set the background color to white
                  ),
                  onTap: () async {
                    DateTime? selectedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(DateTime.now().year + 5),
                    );
                    if (selectedDate != null) {
                      _dateController.text = selectedDate.toString().split(' ')[0];
                    }
                  },
                ),
                SizedBox(height: 20.0),
                Container(
                  color: Colors.white, // Set the background color to white
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle payment submission here
                      String recipient = _recipientController.text;
                      double amount = double.tryParse(_amountController.text) ?? 0.0;
                      DateTime date = DateTime.parse(_dateController.text);
                      // Perform payment logic here
                      print('Sending $amount to $recipient on $date');
                      // Show payment success message
                      _showPaymentSuccess(context);
                    },
                    child: Text('Make Payment'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showPaymentSuccess(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Payment Successful!'),
        duration: Duration(seconds: 3), // Adjust duration as needed
      ),
    );
  }
}

class Custom11DigitFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length <= 11) {
      return newValue;
    } else {
      return oldValue;
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: PaymentPage(),
  ));
}

final Color customColor = Color.fromRGBO(255, 246, 143, 1);