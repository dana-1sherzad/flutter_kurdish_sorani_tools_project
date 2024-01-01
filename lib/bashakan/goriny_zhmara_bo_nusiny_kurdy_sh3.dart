import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

class g_zh_b_n_k extends StatefulWidget {
  const g_zh_b_n_k({super.key});

  @override
  _g_zh_b_n_kState createState() => _g_zh_b_n_kState();
}

class _g_zh_b_n_kState extends State<g_zh_b_n_k> {
  final stringDigit = '257,433';
  final intDigit = -128;
  final texttt = TextEditingController();

  String nusin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      appBar: AppBar(
        title: const Text("گۆڕینی ژمارە بۆ نووسینی کوردی"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: texttt,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      nusin = texttt.text;
                    });
                  },
                  child: const Text("گۆڕین"),
                ),
                Text(GorinyZhmarayNawString(nusin).toString()),
                Text(GorinyZhmarayNawString(nusin, ordinal: true).toString()),
                Text(nusin.GorinyZhmaraBoWsha().toString()),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text('نموونەی ژمارەکان'),
                              const SizedBox(height: 20),

                              const Text(
                                "لەم نموونەیەی ئێرە جیاواز لە دوو شێوازەکەی تر ئەمەیان ژمارەی ناو سترینگ دەگۆڕێت بۆ نووسین نەک ئینتیجەر",
                                textAlign: TextAlign.right,
                              ), // سەت ملیارد
                              const SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('داخستن'),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.info),
                  label: const Text("زانیاری"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
