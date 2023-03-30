import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class SideSheetContentAboutFyers extends StatelessWidget {
  const SideSheetContentAboutFyers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Image.asset(
              'fyers.jpg',
            ),
            title: const Text('FYERS'),
            subtitle: Text(''),
            trailing: const Icon(Icons.launch_rounded),
            onTap: () {
              // do something when the tile is tapped
            },
          ),
          Container(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 55),
            // ignore: prefer_const_constructors
            child: Text(
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                'To empower new age trader & investors  with the best in class technology and platforms '),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 35),
            child: Center(
              child: InkWell(
                onTap: () async {
                  final url =
                      Uri.parse('https://www.youtube.com/watch?v=r0JhpI0XKgk');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Image.asset('fyers_video.jpg')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//https://www.youtube.com/watch?v=r0JhpI0XKgk
