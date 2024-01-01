import 'package:example/bashakan/goriny_zhmara_bo_nusiny_kurdy_sh3.dart';
import 'package:example/bashakan/fariza.dart';
import 'package:example/bashakan/goriny_zhmara.dart';
import 'package:example/models/button_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

import 'bashakan/format_krdny_zhmara.dart';
import 'bashakan/goriny_zhmara_bo_nusiny_kurdy.dart';
import 'bashakan/kurdy_laxo_grtwa.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Mallawa(),
      theme: ThemeData(
        fontFamily: KurdishSoraniTheme.font(KurdFont: KurdFont.rabar_22),
        package: KurdishSoraniTheme.package,
        primarySwatch: Colors.blue,
      ),
    ),
  );
}

class Mallawa extends StatefulWidget {
  const Mallawa({super.key});

  @override
  State<Mallawa> createState() => _MallawaState();
}

class _MallawaState extends State<Mallawa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("this package coded by dana sherzad"),
              const SizedBox(
                height: 20,
              ),
              MyButton(context, 'گۆڕینی ژمارە بۆ نووسینی کوردی',
                  const goriny_zhmara_bo_nusiny_kurdy()),
              MyButton(
                context,
                'فۆڕماتکردنی ژمارە',
                const formatkrdny_zhmara(
                  title: 'فۆڕماتکردنی ژمارە',
                ),
              ),
              MyButton(
                context,
                'V3 گۆڕینی ژمارە بۆ نووسینی کوردی ',
                const g_zh_b_n_k(),
              ),
              MyButton(
                context,
                'فاریزە',
                const labrdn_w_danany_fariza(),
              ),
              MyButton(
                context,
                'گۆڕینی ژمارە',
                const Goriny_Zhmara(),
              ),
              MyButton(
                context,
                'کوردی لەخۆ گرتووە؟',
                const Kurdy_Laxo_Grtwa(),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text('چاککردنی لینک'),
                              const SizedBox(height: 20),
                              const Text(
                                  'لینکێک دابنێ گەر کێشەی هەبوو خۆی تۆماتیکی %20ی بۆ دادەنێت'),
                              const Text("بۆ نموونە"),
                              const Text(
                                  "https://dana_sherzad.com/my profile page"),
                              const Text("دەیکات بە"),
                              Text(chakkrdny_link(
                                  'https://dana_sherzad.com/my profile page')),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('داخستن'),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                icon: const Icon(Icons.link),
                label: const Text("چاککردنی لینک"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// aw prozhaya wak nmunayak dabgra
// https://github.com/dana-1sherzad/flutter_kurdish_sorani_tools_project