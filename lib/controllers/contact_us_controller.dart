import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsController extends GetxController{
  final name = TextEditingController();
  final email = TextEditingController();
  final subject = TextEditingController();
  final message = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future launchURL(String link) async{
    if (!await launchUrl(Uri.parse(link))) {
    throw Exception('Could not launch $link');
  }
  }
}