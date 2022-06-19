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

class PageUnsereStrategien extends StatefulWidget {
  const PageUnsereStrategien({
    Key? key,
  }) : super(key: key);

  @override
  _StateUnsereStrategien createState() => _StateUnsereStrategien();
}

class _StateUnsereStrategien extends AuthState<PageUnsereStrategien>
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
                    r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/5.png''',
                    width: double.maxFinite,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(
                          top: 30,
                        ),
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
                        child: Text(r'''Unsere Strategie ''',
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
                        initialVideoId: r'''6Cv-COcfgsU''',
                        params: YoutubePlayerParams(
                          startAt: Duration(seconds: 0),
                          showControls: true,
                          showFullscreenButton: true,
                          loop: false,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                          r'''Hier findest du sämtliche Informationen, die du zum Erlernen unserer Strategie benötigst sowie unsere Educator, die dir das Lernen mit ihrem GoLive Sessions deutlich vereinfachen. ''',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: const Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.ltr,
                          maxLines: 20),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            top: 30,
                          ),
                          padding: const EdgeInsets.only(
                            left: 3,
                            top: 3,
                            right: 3,
                            bottom: 3,
                          ),
                          width: double.maxFinite,
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
                          child: Text(r'''  Step by Step Anleitung ''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.ltr,
                              maxLines: 1),
                        ),
                        Placeholder(
                          stroke: 2,
                          color: Color(0xFF000000),
                          width: 400,
                          height: 40,
                        ),
                        TextButton(
                          onPressed: () async {
                            if (await canLaunchUrlString(
                                '''https://www.dropbox.com/sh/1ddv10aaxn070uu/AAD2eFLzdt9pHyC5qBzfI_Vua?dl=0''')) {
                              await launchUrlString(
                                '''https://www.dropbox.com/sh/1ddv10aaxn070uu/AAD2eFLzdt9pHyC5qBzfI_Vua?dl=0''',
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
                              r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/7 (2).png''',
                              width: double.maxFinite,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Placeholder(
                          stroke: 2,
                          color: Color(0xFF000000),
                          width: 400,
                          height: 40,
                        ),
                        TextButton(
                          onPressed: () async {
                            if (await canLaunchUrlString(
                                '''https://www.dropbox.com/sh/1ddv10aaxn070uu/AAD2eFLzdt9pHyC5qBzfI_Vua?dl=0''')) {
                              await launchUrlString(
                                '''https://www.dropbox.com/sh/1ddv10aaxn070uu/AAD2eFLzdt9pHyC5qBzfI_Vua?dl=0''',
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
                              r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/8 (2).png''',
                              width: double.maxFinite,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Placeholder(
                          stroke: 2,
                          color: Color(0xFF000000),
                          width: 400,
                          height: 40,
                        ),
                        TextButton(
                          onPressed: () async {},
                          onLongPress: () async {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                            ),
                            child: Image.network(
                              r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/10 (1).png''',
                              width: double.maxFinite,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Placeholder(
                          stroke: 2,
                          color: Color(0xFF000000),
                          width: 400,
                          height: 40,
                        ),
                        TextButton(
                          onPressed: () async {
                            if (await canLaunchUrlString(
                                '''https://www.dropbox.com/sh/1ddv10aaxn070uu/AAD2eFLzdt9pHyC5qBzfI_Vua?dl=0''')) {
                              await launchUrlString(
                                '''https://www.dropbox.com/sh/1ddv10aaxn070uu/AAD2eFLzdt9pHyC5qBzfI_Vua?dl=0''',
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
                              r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/9 (2).png''',
                              width: double.maxFinite,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Placeholder(
                          stroke: 2,
                          color: Color(0xFF000000),
                          width: 400,
                          height: 40,
                        ),
                        TextButton(
                          onPressed: () async {
                            if (await canLaunchUrlString(
                                '''https://www.dropbox.com/sh/1ddv10aaxn070uu/AAD2eFLzdt9pHyC5qBzfI_Vua?dl=0''')) {
                              await launchUrlString(
                                '''https://www.dropbox.com/sh/1ddv10aaxn070uu/AAD2eFLzdt9pHyC5qBzfI_Vua?dl=0''',
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
                              r'''https://ficgypsogumtyisfzgty.supabase.co/storage/v1/object/public/public/The Visionaries/Kopie von Trading call (Telefon-Hintergrundbild) (E-Book-Cover)-20.png''',
                              width: double.maxFinite,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Placeholder(
                          stroke: 2,
                          color: Color(0xFF000000),
                          width: 400,
                          height: 100,
                        ),
                      ],
                    ),
                  ],
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.zero,
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
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
