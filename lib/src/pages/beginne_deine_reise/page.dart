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

class PageBeginnedeineReise extends StatefulWidget {
  const PageBeginnedeineReise({
    Key? key,
  }) : super(key: key);

  @override
  _StateBeginnedeineReise createState() => _StateBeginnedeineReise();
}

class _StateBeginnedeineReise extends AuthState<PageBeginnedeineReise>
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
            child: ListView(
              reverse: true,
              primary: true,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  height: 250,
                  child: Image.network(
                    r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/Kopie von Trading call (Telefon-Hintergrundbild) (E-Book-Cover) (9).png''',
                    width: double.maxFinite,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        top: 30,
                        right: 5,
                      ),
                      child: Container(
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: double.maxFinite,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFABABAB),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                          border: Border(
                            left:
                                BorderSide(width: 0, color: Color(0xFF000000)),
                            top: BorderSide(width: 0, color: Color(0xFF000000)),
                            right:
                                BorderSide(width: 0, color: Color(0xFF000000)),
                            bottom:
                                BorderSide(width: 0, color: Color(0xFF000000)),
                          ),
                        ),
                        child: Text(r'''Beginne deine Reise''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: const Color(0xFF000000),
                                fontWeight: FontWeight.w600,
                                fontSize: 32,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.ltr,
                            maxLines: 1),
                      ),
                    ),
                    Placeholder(
                      stroke: 2,
                      color: Color(0xFF000000),
                      width: 400,
                      height: 30,
                    ),
                    YoutubePlayerIFrame(
                      controller: YoutubePlayerController(
                        initialVideoId: r'''yac1PUPlX7E''',
                        params: YoutubePlayerParams(
                          startAt: Duration(seconds: 0),
                          showControls: true,
                          showFullscreenButton: false,
                          loop: false,
                        ),
                      ),
                    ),
                    Placeholder(
                      stroke: 2,
                      color: Color(0xFF000000),
                      width: 400,
                      height: 30,
                    ),
                    Text(
                        r'''  Auf der großen Reise zur Verwirklichung deiner Träume und Ziele wird dir schnell bewusst, dass dein Mindest, deine Gedanken sowie deine Sicht auf das Leben ebenfalls wachsen müssen. Dir muss bewusst sein, dass Veränderungen in unserem Leben auch Veränderungen bei uns selbst als Person mit sich bringen. Beginne dich selbst in der Zukunft zu sehen.  Dieser Bereich dient dazu, dich Schritt für Schritt auf diesem Weg zu begeleiten. ''',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: const Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                        maxLines: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 30,
                              ),
                              padding: EdgeInsets.zero,
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                color: Color(0xFF000000),
                                border: Border(
                                  left: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000)),
                                  top: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000)),
                                  right: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000)),
                                  bottom: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000)),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () async {
                                  if (await canLaunchUrlString(
                                      '''https://www.dropbox.com/scl/fo/15w6u1depx59txbytptdm/h?dl=0&rlkey=9wz8ydok42aswr7rks5icd8j4''')) {
                                    await launchUrlString(
                                      '''https://www.dropbox.com/scl/fo/15w6u1depx59txbytptdm/h?dl=0&rlkey=9wz8ydok42aswr7rks5icd8j4''',
                                      mode: LaunchMode.inAppWebView,
                                    );
                                  }
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
                                    r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/Kopie von Trading call (Telefon-Hintergrundbild) (E-Book-Cover) (6).png''',
                                    width: double.maxFinite,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Placeholder(
                              stroke: 2,
                              color: Color(0xFF000000),
                              width: 400,
                              height: 50,
                            ),
                            Container(
                              margin: EdgeInsets.zero,
                              padding: EdgeInsets.zero,
                              width: double.maxFinite,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFABABAB),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                ),
                                border: Border(
                                  left: BorderSide(
                                      width: 0, color: Color(0xFF000000)),
                                  top: BorderSide(
                                      width: 0, color: Color(0xFF000000)),
                                  right: BorderSide(
                                      width: 0, color: Color(0xFF000000)),
                                  bottom: BorderSide(
                                      width: 0, color: Color(0xFF000000)),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                ),
                                child: Text(
                                    r'''Bleibe immer auf den aktuellen !''',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.center,
                                    textDirection: TextDirection.ltr,
                                    maxLines: 2),
                              ),
                            ),
                            Placeholder(
                              stroke: 2,
                              color: Color(0xFF000000),
                              width: 400,
                              height: 10,
                            ),
                            TextButton(
                              onPressed: () async {
                                if (await canLaunchUrlString(
                                    '''https://t.me/+TvoZ-PpAEw42MTgy''')) {
                                  await launchUrlString(
                                    '''https://t.me/+TvoZ-PpAEw42MTgy''',
                                    mode: LaunchMode.inAppWebView,
                                  );
                                }
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
                                  r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/6.png''',
                                  width: double.maxFinite,
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () async {
                                if (await canLaunchUrlString(
                                    '''https://t.me/+Kk9fsNv1FgJiYzcy''')) {
                                  await launchUrlString(
                                    '''https://t.me/+Kk9fsNv1FgJiYzcy''',
                                    mode: LaunchMode.inAppWebView,
                                  );
                                }
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
                                  r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/7.png''',
                                  width: double.maxFinite,
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () async {
                                if (await canLaunchUrlString(
                                    '''https://t.me/joinchat/AAAAAEY3xDZLuxjsbqd0Aw''')) {
                                  await launchUrlString(
                                    '''https://t.me/joinchat/AAAAAEY3xDZLuxjsbqd0Aw''',
                                    mode: LaunchMode.inAppWebView,
                                  );
                                }
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
                                  r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/8.png''',
                                  width: double.maxFinite,
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () async {
                                if (await canLaunchUrlString(
                                    '''https://t.me/joinchat/Crx6ihgsaHmdDsbT7lIxyw''')) {
                                  await launchUrlString(
                                    '''https://t.me/joinchat/Crx6ihgsaHmdDsbT7lIxyw''',
                                    mode: LaunchMode.inAppWebView,
                                  );
                                }
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
                                  r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/9.png''',
                                  width: double.maxFinite,
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Lottie.network(
                              r'''https://assets9.lottiefiles.com/packages/lf20_1c6o3mcj.json''',
                              width: double.maxFinite,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                ListView(
                  reverse: true,
                  primary: true,
                ),
              ],
            ),
          ),
          // BottomBar
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                  right: 5,
                  bottom: 10,
                ),
                child: Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 20,
                  height: 70,
                  decoration: BoxDecoration(
                    color: const Color(0xFF7E7C7C),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                    ),
                    border: Border(
                      left: BorderSide(width: 5, color: Color(0xFFFFFFFF)),
                      top: BorderSide(width: 5, color: Color(0xFFFFFFFF)),
                      right: BorderSide(width: 5, color: Color(0xFFFFFFFF)),
                      bottom: BorderSide(width: 5, color: Color(0xFFFFFFFF)),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () async {
                      await Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageHomePage(),
                        ),
                      );
                    },
                    onLongPress: () async {},
                    child: Icon(
                      MdiIcons.fromString('home'),
                      size: 40,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
