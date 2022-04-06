import 'package:flutter/material.dart';

class PhoneAuthPage extends StatelessWidget {
  const PhoneAuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade700,
                  padding: EdgeInsets.symmetric(vertical: 28),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
              onPressed: (() {}),
              child: Text(
                "Continue",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "Un code a ete envoye a",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "+212 600000000",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                PinCodeField(pin: 4),
                PinCodeField(pin: 3),
                PinCodeField(pin: 9),
                PinCodeField(pin: 0),
              ]),
              SizedBox(
                height: 15,
              ),
              Align(
                child: Text(
                  "Send another code",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade700),
                ),
                alignment: Alignment.topCenter,
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PinCodeField extends StatelessWidget {
  const PinCodeField({Key? key, required this.pin}) : super(key: key);
  final int pin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Text(
        "$pin",
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
