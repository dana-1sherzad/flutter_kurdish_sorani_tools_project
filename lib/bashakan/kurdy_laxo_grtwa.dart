import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

class Kurdy_Laxo_Grtwa extends StatefulWidget {
  const Kurdy_Laxo_Grtwa({super.key});

  @override
  _Kurdy_Laxo_GrtwaState createState() => _Kurdy_Laxo_GrtwaState();
}

class _Kurdy_Laxo_GrtwaState extends State<Kurdy_Laxo_Grtwa> {
  final nusin = TextEditingController();
  String check = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("کوردی لەخۆی گرتووە؟"),
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
                  controller: nusin,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      check = nusin.text;
                    });
                  },
                  child: const Text("گۆڕین"),
                ),
                const Text("دەقی نووسراو بە زمانی کوردییە؟"),
                Text(isKurdish("دانا شێرزاد").toString()),
                Text(isKurdish("دانا Sherzad").toString()),
                if (isKurdish(check).toString().contains("true"))
                  const Text("بەڵێ"),
                if (isKurdish(check).toString().contains("false"))
                  const Text("نەخێر"),

                const Text("دەقی نووسراو هیچ پیتێکی کوردی تیایە؟"),
                Text(hasKurdish("دانا شێرزاد").toString()),
                Text(hasKurdish("دانا Sherzad").toString()),
                if (hasKurdish(check).toString().contains("true"))
                  const Text("بەڵێ"),
                if (hasKurdish(check).toString().contains("false"))
                  const Text("نەخێر"),
                //true
              ],
            ),
          ),
        ),
      ),
    );
  }
}
