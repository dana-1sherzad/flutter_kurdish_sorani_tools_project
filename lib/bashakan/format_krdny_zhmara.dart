import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

class formatkrdny_zhmara extends StatefulWidget {
  const formatkrdny_zhmara({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _formatkrdny_zhmaraState createState() => _formatkrdny_zhmaraState();
}

class _formatkrdny_zhmaraState extends State<formatkrdny_zhmara> {
  TextEditingController? _controller;
  TextEditingController? _controllerInputFromat;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controllerInputFromat = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: _controller,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                onChanged: (str) => setState(() {}),
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.only(top: 10, right: 5, bottom: 10, left: 5),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2)),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.redAccent, width: 2)),
                  errorStyle: TextStyle(color: Colors.redAccent),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Text(
                "تایبەتمەندییەکانی پاکێجەکە:",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Text(
                "1. گۆڕینی ژمارەکان بۆ پیت (بەبێ گۆڕینی ژمارە):",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Text(
                DigitToWord.toWord(_controller!.value.text, StrType.NumWord,
                    isMoney: true, separator: "."),
                textDirection: TextDirection.rtl,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Text(
                "2. گۆڕینی ژمارەکان بۆ پیت (لەگەڵ گۆڕینی ژمارەکان):",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Text(
                DigitToWord.toWord(_controller!.value.text, StrType.StrWord),
                textDirection: TextDirection.rtl,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Text(
                "3. جیاکردنەوەی ژمارەکان بە سێ ژمارە بە شێوازی ئاسایی:",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Text(
                DigitFormat.convert(_controller!.value.text),
                textDirection: TextDirection.rtl,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Text(
                "4. جیاکردنەوەی ژمارەکان بە سێ ژمارەیی وەک (TextInputFormatter): .",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: _controllerInputFromat,
                textAlign: TextAlign.center,
                inputFormatters: [DigitInputFormat()],
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: "Vazir"),
                onChanged: (str) => setState(() {}),
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.only(top: 10, right: 5, bottom: 10, left: 5),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2)),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.redAccent, width: 2)),
                  errorStyle: TextStyle(color: Colors.redAccent),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
