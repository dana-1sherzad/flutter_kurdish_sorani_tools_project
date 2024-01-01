import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

Widget MyButton(BuildContext context, String title, Widget pageName) {
  return Column(
    children: [
      SizedBox(
        width: double.infinity,
        child: CupertinoButton(
          color: Colors.blue,
          child: Text(
            title,
            style: const KurdishTextStyle(KurdFont: KurdFont.rabar_22),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => pageName,
              ),
            );
          },
        ),
      ),
      const SizedBox(
        height: 10,
      ),
    ],
  );
}
