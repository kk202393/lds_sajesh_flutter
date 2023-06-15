import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sajesh_app/screens/notificationScreen/notificationDetails.dart';

class DesboardView extends StatefulWidget {
  const DesboardView(
      {super.key, required String languageCode, required String title});

  @override
  State<DesboardView> createState() => _DesboardViewState();
}

class _DesboardViewState extends State<DesboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Home'),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const NotificationDetail(
                            languageCode: '',
                            title: '',
                          )));
                },
                child: Ink(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        'Notification Details',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
