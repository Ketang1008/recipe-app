import 'dart:html';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURL(String url) async {
  print(url);
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class RecipeView extends StatefulWidget {
  @override
  _RecipeViewState createState() => _RecipeViewState(url: '');
}

class _RecipeViewState extends State<RecipeView> {
  String url;
  _RecipeViewState({required this.url});
  @override
  Widget build(BuildContext context) {
    return _launchURL(url);
  }
}
