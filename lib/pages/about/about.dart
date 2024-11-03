// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'SmartKid',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              const Center(
                child: Text(
                  'Learning app for kid',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 32.0),
              _buildSectionTitle(context, 'Versi: 1.0.0'),
              const SizedBox(height: 8.0),
              _buildSectionContent(context, 'Dibuat oleh: Anisa Safitri'),
              const SizedBox(height: 16.0),
              _buildSectionTitle(context, 'Tujuan Aplikasi:'),
              const SizedBox(height: 8.0),
              _buildSectionContent(context,
                  "Smartkids dirancang untuk memberikan pengalaman belajar yang menyenangkan dan interaktif bagi anak-anak sembari belajar Bahasa Inggris. Misi nya adalah menjadikan pembelajaran menyenangkan dan mudah diakses, mendorong rasa ingin tahu anak-anak. Aplikasi ini mencakup berbagai topik untuk membantu anak-anak membangun dasar pengetahuan yang kuat dengan cara yang menyenangkan dan menarik 😊"),
              const SizedBox(height: 16.0),
              _buildSectionTitle(context, 'Kontak:'),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  _buildIcon(context, 'https://www.instagram.com/_.shftryans',
                      'assets/images/instagram.svg'),
                ],
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.deepPurple,
      ),
    );
  }

  Widget _buildSectionContent(BuildContext context, String content) {
    return Text(
      content,
      style: TextStyle(
        fontSize: 16.0,
        color: Theme.of(context).textTheme.bodyLarge!.color,
      ),
    );
  }

  // ignore: unused_element
  Widget _buildFeature(BuildContext context, String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            description,
            style: TextStyle(
              fontSize: 16.0,
              color: Theme.of(context).textTheme.bodyLarge!.color,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(BuildContext context, String url, String assetPath) {
    return GestureDetector(
      onTap: () {
        _launchURL(context, url);
      },
      child: SvgPicture.asset(
        assetPath,
        width: 32.0,
        height: 32.0,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
      ),
    );
  }

  void _launchURL(BuildContext context, String url) async {
    try {
      await launchUrl(Uri.parse(url));
    } catch (e) {
      throw 'Tidak Bisa Menjalankan $url';
    }
  }
}

// ignore: unused_element
Widget _buildSectionTitle(BuildContext context, String title) {
  return Text(
    title,
    style: const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.deepPurple,
    ),
  );
}

// ignore: unused_element
Widget _buildSectionContent(BuildContext context, String content) {
  return Text(
    content,
    style: TextStyle(
      fontSize: 16.0,
      color: Theme.of(context).textTheme.bodyLarge!.color,
    ),
  );
}

// ignore: unused_element
Widget _buildFeature(BuildContext context, String title, String description) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          description,
          style: TextStyle(
            fontSize: 16.0,
            color: Theme.of(context).textTheme.bodyLarge!.color,
          ),
        ),
      ],
    ),
  );
}
