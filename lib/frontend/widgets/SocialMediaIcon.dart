// ignore: file_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  final IconData icon;
  final String url;
  final Color color;

  const SocialMediaButton({
    super.key,
    required this.icon,
    required this.url,
    this.color = Colors.black,
  });

  Future<bool> canLaunchUrlString(String urlString) async {
    // ignore: deprecated_member_use
    return await canLaunch(urlString);
  }

  Future<void> launchUrlString(String urlString) async {
    // ignore: deprecated_member_use
    await launch(urlString);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: color,
      icon: FaIcon(icon),
      onPressed: () async {
        if (await canLaunchUrlString(url)) {
          await launchUrlString(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    );
  }
}
