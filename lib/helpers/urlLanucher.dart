import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  UrlLauncher._();
  static UrlLauncher urlLauncher = UrlLauncher._();

  shareContent() async {
    await Share.share('hello, how are you');
  }

  launchUrl(String url) async {
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  }

  openWebPage() {
    try {
      launchUrl('https://flutter.dev');
    } on Exception catch (e) {
      print(e);
    }
  }

  makeCall() {
    try {
      launchUrl('https://flutter.dev');
    } on Exception catch (e) {
      print(e);
    }
  }

  sendSms() {
    try {
      launchUrl('https://flutter.dev');
    } on Exception catch (e) {
      print(e);
    }
  }

  ex(BuildContext context) async {
    await Share.share("text");
  }

  sendEmail() {}
  openWhatsAppChat() {}
  openInstegramPage() {}
}
