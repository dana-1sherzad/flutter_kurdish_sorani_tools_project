import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import 'package:flutter/material.dart';

class goriny_wsha_bo_zhmara extends StatefulWidget {
  const goriny_wsha_bo_zhmara({Key? key}) : super(key: key);

  @override
  _goriny_wsha_bo_zhmaraState createState() => _goriny_wsha_bo_zhmaraState();
}

class _goriny_wsha_bo_zhmaraState extends State<goriny_wsha_bo_zhmara> {
  final TextEditingController _textController = TextEditingController();
  int convertedNumber = 0;

  void convertTextToNumber() {
    String enteredText = _textController.text.trim();
    if (enteredText.isNotEmpty) {
      int? result = wordsToNumber(enteredText);
      setState(() {
        convertedNumber = result!;
      });
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("گۆڕینی وشە بۆ ژمارە"),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: _textController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: 'ژمارەیەک بنووسە بە نووسین',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    convertTextToNumber();
                  },
                  child: const Text('گۆڕین بۆ ژمارە'),
                ),
                const SizedBox(height: 20),
                Text(
                  'ژمارەکە: $convertedNumber',
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
