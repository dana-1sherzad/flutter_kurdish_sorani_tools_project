import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import 'package:flutter/material.dart';

class labrdn_w_danany_fariza extends StatefulWidget {
  const labrdn_w_danany_fariza({super.key});

  @override
  _labrdn_w_danany_farizaState createState() => _labrdn_w_danany_farizaState();
}

class _labrdn_w_danany_farizaState extends State<labrdn_w_danany_fariza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("کۆما - فاریزە"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("بۆ دانانی فاریزە"),
              Text(DananyFariza('200000').toString()),
              Text(DananyFariza('٢٠٠٠٠٠')),
              Text('200000'.ZyadkrdnyFariza),
              Text('٢٠٠٠٠٠'.ZyadkrdnyFariza),
              const SizedBox(
                height: 20,
              ),
              const Text("بۆ سڕینەوەی فاریزە"),
              Text('4,544.562'.LabrdnyFariza.toString()), // 4544.562
              Text(SrinawayFariza('654,562').toString()), // 654562
              Text(SrinawayFariza('3,365.255').toString()), // 3365.255
            ],
          ),
        ),
      ),
    );
  }
}
