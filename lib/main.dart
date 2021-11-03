import 'package:flutter/material.dart';

void main() => runApp(
      Column(
        children: const <Widget>[
          Text(
            'Deliver features faster',
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
          ),
          Text(
            'Craft beautiful UIs',
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain, // otherwise the logo will be tiny
              child: FlutterLogo(),
            ),
          ),
        ],
      ),
    );
