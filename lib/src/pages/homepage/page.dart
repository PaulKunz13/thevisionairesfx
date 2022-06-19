import 'dart:ui';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:myapp/src/components/index.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:myapp/auth/auth_state.dart';

import 'package:url_launcher/url_launcher_string.dart';
import 'package:auth_buttons/auth_buttons.dart';

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:collection/collection.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:latlng/latlng.dart';
import 'package:badges/badges.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:http/http.dart' as http;
import 'package:teta_cms/teta_cms.dart';
import 'package:webviewx/webviewx.dart';

class PageHomePage extends StatefulWidget {
  const PageHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _StateHomePage createState() => _StateHomePage();
}

class _StateHomePage extends AuthState<PageHomePage>
    with SingleTickerProviderStateMixin {
  var datasets = <String, dynamic>{};
  int index = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Lottie.network(
          r'''https://assets6.lottiefiles.com/packages/lf20_n6ksawll.json''',
          width: double.maxFinite,
          height: 4000,
          fit: BoxFit.cover,
        ),
      ),
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color(0xFF000000),
              border: Border(
                left: BorderSide(width: 0, color: Color(0xFF000000)),
                top: BorderSide(width: 0, color: Color(0xFF000000)),
                right: BorderSide(width: 0, color: Color(0xFF000000)),
                bottom: BorderSide(width: 0, color: Color(0xFF000000)),
              ),
            ),
            child: SafeArea(
              left: false,
              top: false,
              right: false,
              bottom: false,
              child: ListView(
                reverse: true,
                primary: true,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                        ),
                        child: Text(r'''       Hall of FTMO ''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w500,
                                fontSize: 40,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.ltr,
                            maxLines: 2),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 20,
                        ),
                        child: SizedBox(
                          width: double.maxFinite,
                          height: 400,
                          child: ListView(
                            reverse: true,
                            primary: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(16),
                                          topRight: Radius.circular(16),
                                          bottomRight: Radius.circular(16),
                                          bottomLeft: Radius.circular(16),
                                        ),
                                        child: Image.network(
                                          r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/photo_2022-05-21 16.32.59.jpeg''',
                                          width: 350,
                                          height: 300,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.zero,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                              ),
                                              child: Text(
                                                  r'''Esser Mastrantona ''',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      color: const Color(
                                                          0xFFFFFFFF),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      decoration:
                                                          TextDecoration.none,
                                                    ),
                                                  ),
                                                  textAlign: TextAlign.left,
                                                  textDirection:
                                                      TextDirection.ltr,
                                                  maxLines: 1),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                              ),
                                              child: Text(
                                                  r'''FTMO Trader 80K ''',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      color: const Color(
                                                          0xFFFFFFFF),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      decoration:
                                                          TextDecoration.none,
                                                    ),
                                                  ),
                                                  textAlign: TextAlign.left,
                                                  textDirection:
                                                      TextDirection.ltr,
                                                  maxLines: 1),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                      right: 20,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            topRight: Radius.circular(16),
                                            bottomRight: Radius.circular(16),
                                            bottomLeft: Radius.circular(16),
                                          ),
                                          child: Image.network(
                                            r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/IMG_7B34447543FC-1.jpeg''',
                                            width: 350,
                                            height: 300,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.zero,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 10,
                                                ),
                                                child: Text(
                                                    r'''Rodrigo Amaro''',
                                                    style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: const Color(
                                                            0xFFFFFFFF),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 16,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        decoration:
                                                            TextDecoration.none,
                                                      ),
                                                    ),
                                                    textAlign: TextAlign.left,
                                                    textDirection:
                                                        TextDirection.ltr,
                                                    maxLines: 1),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 5,
                                                ),
                                                child: Text(
                                                    r'''FTMO Trader 10K''',
                                                    style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: const Color(
                                                            0xFFFFFFFF),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 16,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        decoration:
                                                            TextDecoration.none,
                                                      ),
                                                    ),
                                                    textAlign: TextAlign.left,
                                                    textDirection:
                                                        TextDirection.ltr,
                                                    maxLines: 1),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(16),
                                          topRight: Radius.circular(16),
                                          bottomRight: Radius.circular(16),
                                          bottomLeft: Radius.circular(16),
                                        ),
                                        child: Image.network(
                                          r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/photo_2022-05-21 16.50.06.jpeg''',
                                          width: 350,
                                          height: 300,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.zero,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                              ),
                                              child: Text(r'''Paul Seeber''',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      color: const Color(
                                                          0xFFFFFFFF),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      decoration:
                                                          TextDecoration.none,
                                                    ),
                                                  ),
                                                  textAlign: TextAlign.left,
                                                  textDirection:
                                                      TextDirection.ltr,
                                                  maxLines: 1),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                              ),
                                              child: Text(
                                                  r'''FTMO Trader 200K ''',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      color: const Color(
                                                          0xFFFFFFFF),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      decoration:
                                                          TextDecoration.none,
                                                    ),
                                                  ),
                                                  textAlign: TextAlign.left,
                                                  textDirection:
                                                      TextDirection.ltr,
                                                  maxLines: 1),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(16),
                                          topRight: Radius.circular(16),
                                          bottomRight: Radius.circular(16),
                                          bottomLeft: Radius.circular(16),
                                        ),
                                        child: Image.network(
                                          r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/photo_2022-05-21 16.50.15.jpeg''',
                                          width: 350,
                                          height: 300,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.zero,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                              ),
                                              child: Text(r'''Nico Kiefapfel''',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      color: const Color(
                                                          0xFFFFFFFF),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      decoration:
                                                          TextDecoration.none,
                                                    ),
                                                  ),
                                                  textAlign: TextAlign.left,
                                                  textDirection:
                                                      TextDirection.ltr,
                                                  maxLines: 1),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                              ),
                                              child: Text(
                                                  r'''FTMO Trader 25K''',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      color: const Color(
                                                          0xFFFFFFFF),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      decoration:
                                                          TextDecoration.none,
                                                    ),
                                                  ),
                                                  textAlign: TextAlign.left,
                                                  textDirection:
                                                      TextDirection.ltr,
                                                  maxLines: 1),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Placeholder(
                            stroke: 2,
                            color: Color(0xFF000000),
                            width: 400,
                            height: 30,
                          ),
                          Text(r'''Deine bereiche für  in die Freiheit ''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 32,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.ltr,
                              maxLines: 2),
                          Placeholder(
                            stroke: 2,
                            color: Color(0xFF000000),
                            width: 400,
                            height: 30,
                          ),
                          GridView(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisSpacing: 1,
                              crossAxisCount: 2,
                              crossAxisSpacing: 2,
                              childAspectRatio: 1,
                            ),
                            shrinkWrap: true,
                            primary: true,
                            children: [
                              TextButton(
                                onPressed: () async {
                                  await Navigator.push<void>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          PageUnsereStrategien(),
                                    ),
                                  );
                                },
                                onLongPress: () async {},
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                    bottomRight: Radius.circular(16),
                                    bottomLeft: Radius.circular(16),
                                  ),
                                  child: Image.network(
                                    r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/Trading.png''',
                                    width: double.maxFinite,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () async {
                                  await Navigator.push<void>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          PageLetsgetaLeader(),
                                    ),
                                  );
                                },
                                onLongPress: () async {},
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                    bottomRight: Radius.circular(16),
                                    bottomLeft: Radius.circular(16),
                                  ),
                                  child: Image.network(
                                    r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/Eutre.png''',
                                    width: double.maxFinite,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () async {
                                  if (await canLaunchUrlString(
                                      '''https://www.retiredyoung.de''')) {
                                    await launchUrlString(
                                      '''https://www.retiredyoung.de''',
                                      mode: LaunchMode.inAppWebView,
                                    );
                                  }
                                },
                                onLongPress: () async {},
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                    bottomRight: Radius.circular(16),
                                    bottomLeft: Radius.circular(16),
                                  ),
                                  child: Image.network(
                                    r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/Kopie von Trading call (Telefon-Hintergrundbild) (E-Book-Cover).jpg''',
                                    width: double.maxFinite,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () async {
                                  await Navigator.push<void>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PageValueArea(),
                                    ),
                                  );
                                },
                                onLongPress: () async {},
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                    bottomRight: Radius.circular(16),
                                    bottomLeft: Radius.circular(16),
                                  ),
                                  child: Image.network(
                                    r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/value.png''',
                                    width: double.maxFinite,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Placeholder(
                                    stroke: 2,
                                    color: Color(0xFF000000),
                                    width: 400,
                                    height: 30,
                                  ),
                                  TextButton(
                                    onPressed: () async {
                                      await Navigator.push<void>(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              PageBeginnedeineReise(),
                                        ),
                                      );
                                    },
                                    onLongPress: () async {},
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12),
                                        bottomRight: Radius.circular(12),
                                        bottomLeft: Radius.circular(12),
                                      ),
                                      child: Image.network(
                                        r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/eina.png''',
                                        width: double.maxFinite,
                                        height: 150,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Placeholder(
                                stroke: 2,
                                color: Color(0xFF000000),
                                width: 400,
                                height: 30,
                              ),
                              Text(
                                  r'''  Start Learning then beginn to earning your Future''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: const Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                  maxLines: 2),
                              Lottie.network(
                                r'''https://assets9.lottiefiles.com/packages/lf20_SyUX5x.json''',
                                width: double.maxFinite,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
