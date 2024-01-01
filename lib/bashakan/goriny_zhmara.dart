import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

class Goriny_Zhmara extends StatefulWidget {
  const Goriny_Zhmara({Key? key}) : super(key: key);

  @override
  _Goriny_ZhmaraState createState() => _Goriny_ZhmaraState();
}

class _Goriny_ZhmaraState extends State<Goriny_Zhmara> {
  String selectedLanguage = 'english'; // Default language is English
  final TextEditingController _numberController = TextEditingController();
  String convertedNumber = '';

  void convertNumber() {
    String inputNumber = _numberController.text.trim();
    if (selectedLanguage == 'english') {
      convertedNumber = convertEnToKu(inputNumber);
    } else {
      convertedNumber = convertKuToEn(inputNumber);
    }
    setState(() {});
  }

  @override
  void dispose() {
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dana Sherzad",
          style: KurdishTextStyle(
            KurdFont: KurdFont.rabar_21,
            fontSize: 15,
          ),
        ),
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
                  controller: _numberController,
                  decoration: const InputDecoration(
                    labelText: 'ژمارەیەک بنووسە',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: 'english',
                      groupValue: selectedLanguage,
                      onChanged: (value) {
                        setState(() {
                          selectedLanguage = value.toString();
                        });
                      },
                    ),
                    const Text('ئینگلیزی'),
                    const SizedBox(width: 20),
                    Radio(
                      value: 'kurdish',
                      groupValue: selectedLanguage,
                      onChanged: (value) {
                        setState(() {
                          selectedLanguage = value.toString();
                        });
                      },
                    ),
                    const Text('کوردی'),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    convertNumber();
                  },
                  child: const Text('گۆڕین'),
                ),
                const SizedBox(height: 20),
                Text(
                  'ژمارە گۆڕاوەکە: $convertedNumber',
                  style: const TextStyle(fontSize: 18),
                ),
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
                              Text(convertEnToKu(
                                  'گۆڕینی ئینگلیزی بۆ کوردی 2888')),
                              Text(convertKuToEn(
                                  'گۆڕینی کوردی بۆ ئینگلیزی : ٥٦٥٦')),
                              Text(convertEnToKu(
                                  'گۆڕینی ئینگلیزی بۆ کوردی : 7678٧٥٦٦')),
                              Text(convertKuToEn(
                                  'گۆڕینی کوردی بۆ ئینگلیزی : 222٨٦٧٨')),
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
                  label: const Text("بینینی نموونە"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
