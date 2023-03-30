import 'package:flutter/material.dart';
import 'package:flutter_application_side_sheet_1/side%20_Sheet_content/side_sheet_content_about_fyers.dart';
import 'package:flutter_application_side_sheet_1/side%20_Sheet_content/side_sheet_content_grid_view.dart';
import 'package:flutter_application_side_sheet_1/side%20_Sheet_content/side_sheet_content_script_details.dart';

import '../side _Sheet_content/side_sheet_content_about_screener.dart';
import 'fy_side_sheet.dart';

class BodyPart3 extends StatelessWidget {
  const BodyPart3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const ScreenerTitleSectionNewWidget(),
            const Divider(
              // height: 20,
              thickness: 0.2,
              indent: 7,
              endIndent: 0,
              color: Colors.grey,
            ),
            const RemainingBodySection()
          ],
        ),
      ),
    );
  }
}

class RemainingBodySection extends StatelessWidget {
  const RemainingBodySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      children: [
        // ignore: prefer_const_constructors
        Expanded(
          child: const FloatingButton(),
        ),
        Expanded(
            child: Container(
          color: Colors.redAccent,
        )),
        Expanded(
            child: Container(
          color: Colors.blueAccent,
        ))
      ],
    ));
  }
}

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () => {
              FySideSheet.right(
                body: const SideSheetContentGridView(),
                context: context,
                width: MediaQuery.of(context).size.width * 0.3,
              )
            },
            child: const Text('Grid'),
          ),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            backgroundColor: Colors.pink,
            onPressed: () => {
              FySideSheet.right(
                body: const SideSheetContentAboutFyers(),
                context: context,
                width: MediaQuery.of(context).size.width * 0.3,
              )
            },
            child: const Text('Fyers'),
          ),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            backgroundColor: Colors.purpleAccent,
            onPressed: () => {
              FySideSheet.right(
                body: const SideSheetContentScriptDetails(),
                context: context,
                width: MediaQuery.of(context).size.width * 0.3,
              )
            },
            child: const Text('Script'),
          )
        ],
      ),
    );
  }
}

class ScreenerTitleSectionNewWidget extends StatelessWidget {
  const ScreenerTitleSectionNewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.only(left: 35),
      child: Row(
        children: [
          const Text(
            'Screener',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () => {
              FySideSheet.right(
                body: const SideSheetContentScreener(),
                context: context,
                width: MediaQuery.of(context).size.width * 0.3,
              )
            },
            child: const Icon(
              Icons.info_outline,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
