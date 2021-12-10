import 'package:all_india_mocktest/pages/home/attempt_exam_page.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class ExamRegistrationPage extends StatefulWidget {
  static const routeName = '/signin-signup/upcommingexam/exam/registrationpage';

  @override
  _ExamRegistrationPageState createState() => _ExamRegistrationPageState();
}

class _ExamRegistrationPageState extends State<ExamRegistrationPage> {
  static const platform = const MethodChannel("razorpay_flutter");

  Razorpay _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_test_mgqyLo0mS4CXyc',
      'amount': 15000,
      'name': 'All India Mock Test.',
      'description': 'Exam Fee of RS:150/',
      'prefill': {'contact': '', 'email': ''},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint(e);
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg: "SUCCESS: " + response.paymentId, timeInSecForIos: 4);
    Navigator.pushNamed(context, AttemptExamPage.routeName);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "ERROR: " + response.code.toString() + " - " + response.message,
        timeInSecForIos: 4);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET: " + response.walletName, timeInSecForIos: 4);
  }

  CountDownController _controller = CountDownController();

  int dur = 0, id = 0;
  void setDuration(String duration) {
    final s = duration.split(':');
    dur += num.parse(s[0]) * 60 * 60;
    dur += num.parse(s[1]) * 60;
    dur += num.parse(s[2]);
    setState(() {});
  }

  AppBar appBar = AppBar(
    title: Text(
      'Register for exam',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    Map<String, dynamic> route = ModalRoute.of(context).settings.arguments;
    if (id == 0) {
      setDuration(route['duration']);
      id++;
    }
    print(route['duration']);
    return Scaffold(
      appBar: appBar,
      body: Container(
        height: media.height -
            MediaQuery.of(context).padding.top -
            appBar.preferredSize.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircularCountDownTimer(
                    duration: 15 * 60,
                    initialDuration: 15 * 60 - dur,
                    controller: _controller,
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.4,
                    ringColor: Colors.grey[300],
                    ringGradient: null,
                    fillColor: Colors.purpleAccent[100],
                    fillGradient: LinearGradient(
                      colors: [
                        // Theme.of(context).primaryColor,
                        // Theme.of(context).primaryColor.withOpacity(0.2),
                        Colors.blueGrey.shade900,
                        Colors.blueGrey.shade100,
                      ],
                    ),
                    backgroundColor: Colors.white,
                    backgroundGradient: null,
                    strokeWidth: 20.0,
                    strokeCap: StrokeCap.round,
                    textStyle: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textFormat: CountdownTextFormat.HH_MM_SS,
                    isReverse: true,
                    isReverseAnimation: true,
                    isTimerTextShown: true,
                    autoStart: true,
                    onStart: () {
                      print('Countdown Started');
                    },
                    onComplete: () {
                      print('Countdown Ended');
                    },
                  ),
                  Text(
                    'Time left\nfor exam',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blueGrey[100],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Quickly get yourself registered and pay to start attempting your mock exams to evaluate your skills to crack your exams.\n\nAll the best :) ',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: openCheckout,
                child: Text('Pay Now'),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size.fromWidth(100),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
