import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

class goriny_zhmara_bo_nusiny_kurdy extends StatefulWidget {
  const goriny_zhmara_bo_nusiny_kurdy({super.key});

  @override
  _goriny_zhmara_bo_nusiny_kurdyState createState() =>
      _goriny_zhmara_bo_nusiny_kurdyState();
}

class _goriny_zhmara_bo_nusiny_kurdyState
    extends State<goriny_zhmara_bo_nusiny_kurdy> {
  int number = 0;
  String text = "سەد و بیست و پێنج";

  @override
  Widget build(BuildContext context) {
    String tnusin2 = number.toKurdishString();
    return Scaffold(
      appBar: AppBar(
        title: const Text("گۆڕینی ژمارە بۆ نووسینی کوردی"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "ژمارەیەک بنووسە",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setState(() {
                        number = int.parse(value);
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  tnusin2,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "ڕێگای دووەم",
                style: KurdishTextStyle(
                  color: Colors.amber,
                  KurdFont: KurdFont.rabar_21,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(GorinyZhmaraBoNusin(number)),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "ڕێگای سێیەم",
                style: KurdishTextStyle(
                  color: Colors.amber,
                  KurdFont: KurdFont.rabar_21,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(number.GorinyZhmaraBoWsha().toString()),
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
                            Text(0.toKurdishString()), // سفر
                            Text(1.toKurdishString()), // یەک
                            Text(10.toKurdishString()), // دە
                            Text(100.toKurdishString()), // سەت
                            Text(1000.toKurdishString()), // یەک هەزار
                            Text(10000.toKurdishString()), // دە هەزار
                            Text(100000.toKurdishString()), // سەت هەزار
                            Text(1000000.toKurdishString()), // یەک ملیۆن
                            Text(10000000.toKurdishString()), // دە ملیۆن
                            Text(100000000.toKurdishString()), // سەت ملیۆن
                            Text(1000000000.toKurdishString()), // یەک ملیارد
                            Text(10000000000.toKurdishString()), // دە ملیارد
                            Text(100000000000.toKurdishString()), // سەت ملیارد
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
                icon: const Icon(Icons.numbers),
                label: const Text("بینینی ژمارەکان"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
